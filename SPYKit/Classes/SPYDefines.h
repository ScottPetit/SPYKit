//
//  SPYDefines.h
//  SPYKit
//
//  Created by Scott Petit on 12/28/13.
//  Copyright (c) 2013 Scott Petit. All rights reserved.
//

#ifdef DEBUG
    #define SPYParameterAssert(condition) NSParameterAssert(condition)
#else
    #define SPYParameterAssert(condition) if(!condition) return
#endif