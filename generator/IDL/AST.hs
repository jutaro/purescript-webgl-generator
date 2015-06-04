module IDL.AST where

data IDL = IDL
    { enums      :: [Decl]
    , comments   :: [Decl]
    , functions  :: [Decl]
    , attributes :: [Decl]
    , types      :: [Type]
    }
  deriving Show

data Decl
  = Enum
      { enumName  :: String
      , enumValue :: Integer
      }
  | Comment
      { comment :: String
      }
  | Function
      { methodName    :: String
      , methodRetType :: Type
      , methodArgs    :: [Arg]
      , methodRaises  :: Maybe String
      }
  | Attribute
      { attrIsReadonly :: Bool
      , attrType       :: Type
      , attrName       :: String
      }
  | Typedef
  deriving Show

instance Eq Decl where
  x@Enum{} == y@Enum{} = enumName x == enumName y
  x@Comment{} == y@Comment{} = comment x == comment y
  x@Function{} == y@Function{} = methodName x == methodName y
  x@Attribute{} == y@Attribute{} = attrName x == attrName y
  _ == _ = False

data Type
  = Generic
  | Concrete
    { typeName     :: String
    , typeIsArray  :: Bool
    , typeIsMaybe' :: Bool
    }
  deriving Show

instance Eq Type where
  x == y = typeName x == typeName y

instance Ord Type where
  compare x y = compare (typeName x) (typeName y)

data Arg = Arg
    { argType :: Type
    , argName :: String
    }
  deriving Show

emptyIdl :: IDL
emptyIdl = IDL [] [] [] [] []

webglContext :: Arg
webglContext = Arg (Concrete "WebGLContext" False False) "webgl"

funcArgs :: Decl -> [Arg]
funcArgs f = webglContext : methodArgs f

typeIsMaybe :: Type -> Bool
typeIsMaybe t@Concrete{} = typeIsMaybe' t && not (typeIsArray t)
typeIsMaybe _            = True
