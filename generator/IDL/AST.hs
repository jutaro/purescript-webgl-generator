module IDL.AST where

import qualified Data.Map as Map

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
      , actualName    :: String
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

data IDL = IDL
    { enums      :: Map.Map String Decl
    , functions  :: Map.Map String Decl
    , types      :: Map.Map String Type
    }
  deriving Show

emptyIdl :: IDL
emptyIdl = IDL Map.empty Map.empty Map.empty

webglContext :: Arg
webglContext = Arg (Concrete "WebGLContext" False False) "webgl"

funcArgs :: Decl -> [Arg]
funcArgs f = webglContext : methodArgs f

typeIsMaybe :: Type -> Bool
typeIsMaybe t@Concrete{} = typeIsMaybe' t && not (typeIsArray t)
typeIsMaybe _            = True
