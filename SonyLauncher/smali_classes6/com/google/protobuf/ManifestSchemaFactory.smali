.class final Lcom/google/protobuf/ManifestSchemaFactory;
.super Ljava/lang/Object;
.source "ManifestSchemaFactory.java"

# interfaces
.implements Lcom/google/protobuf/SchemaFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;
    }
.end annotation


# static fields
.field private static final EMPTY_FACTORY:Lcom/google/protobuf/MessageInfoFactory;


# instance fields
.field private final messageInfoFactory:Lcom/google/protobuf/MessageInfoFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 151
    new-instance v0, Lcom/google/protobuf/ManifestSchemaFactory$1;

    invoke-direct {v0}, Lcom/google/protobuf/ManifestSchemaFactory$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/ManifestSchemaFactory;->EMPTY_FACTORY:Lcom/google/protobuf/MessageInfoFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-static {}, Lcom/google/protobuf/ManifestSchemaFactory;->getDefaultMessageInfoFactory()Lcom/google/protobuf/MessageInfoFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/ManifestSchemaFactory;-><init>(Lcom/google/protobuf/MessageInfoFactory;)V

    .line 45
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/MessageInfoFactory;)V
    .locals 1
    .param p1, "messageInfoFactory"    # Lcom/google/protobuf/MessageInfoFactory;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageInfoFactory;

    iput-object v0, p0, Lcom/google/protobuf/ManifestSchemaFactory;->messageInfoFactory:Lcom/google/protobuf/MessageInfoFactory;

    .line 49
    return-void
.end method

.method private static getDefaultMessageInfoFactory()Lcom/google/protobuf/MessageInfoFactory;
    .locals 4

    .line 118
    new-instance v0, Lcom/google/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/protobuf/MessageInfoFactory;

    .line 119
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageInfoFactory;->getInstance()Lcom/google/protobuf/GeneratedMessageInfoFactory;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/protobuf/ManifestSchemaFactory;->getDescriptorMessageInfoFactory()Lcom/google/protobuf/MessageInfoFactory;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;-><init>([Lcom/google/protobuf/MessageInfoFactory;)V

    .line 118
    return-object v0
.end method

.method private static getDescriptorMessageInfoFactory()Lcom/google/protobuf/MessageInfoFactory;
    .locals 4

    .line 166
    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 167
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageInfoFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 168
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/google/protobuf/ManifestSchemaFactory;->EMPTY_FACTORY:Lcom/google/protobuf/MessageInfoFactory;

    return-object v1
.end method

.method private static isProto2(Lcom/google/protobuf/MessageInfo;)Z
    .locals 2
    .param p0, "messageInfo"    # Lcom/google/protobuf/MessageInfo;

    .line 114
    invoke-interface {p0}, Lcom/google/protobuf/MessageInfo;->getSyntax()Lcom/google/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/ProtoSyntax;->PROTO2:Lcom/google/protobuf/ProtoSyntax;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static newSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;)Lcom/google/protobuf/Schema;
    .locals 8
    .param p1, "messageInfo"    # Lcom/google/protobuf/MessageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/MessageInfo;",
            ")",
            "Lcom/google/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 75
    .local p0, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-static {p1}, Lcom/google/protobuf/ManifestSchemaFactory;->isProto2(Lcom/google/protobuf/MessageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    nop

    .line 80
    invoke-static {}, Lcom/google/protobuf/NewInstanceSchemas;->lite()Lcom/google/protobuf/NewInstanceSchema;

    move-result-object v3

    .line 81
    invoke-static {}, Lcom/google/protobuf/ListFieldSchema;->lite()Lcom/google/protobuf/ListFieldSchema;

    move-result-object v4

    .line 82
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v5

    .line 83
    invoke-static {}, Lcom/google/protobuf/ExtensionSchemas;->lite()Lcom/google/protobuf/ExtensionSchema;

    move-result-object v6

    .line 84
    invoke-static {}, Lcom/google/protobuf/MapFieldSchemas;->lite()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v7

    .line 77
    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/MessageSchema;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_0
    nop

    .line 88
    invoke-static {}, Lcom/google/protobuf/NewInstanceSchemas;->lite()Lcom/google/protobuf/NewInstanceSchema;

    move-result-object v3

    .line 89
    invoke-static {}, Lcom/google/protobuf/ListFieldSchema;->lite()Lcom/google/protobuf/ListFieldSchema;

    move-result-object v4

    .line 90
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v5

    const/4 v6, 0x0

    .line 92
    invoke-static {}, Lcom/google/protobuf/MapFieldSchemas;->lite()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v7

    .line 85
    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/MessageSchema;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 94
    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/ManifestSchemaFactory;->isProto2(Lcom/google/protobuf/MessageInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    nop

    .line 98
    invoke-static {}, Lcom/google/protobuf/NewInstanceSchemas;->full()Lcom/google/protobuf/NewInstanceSchema;

    move-result-object v3

    .line 99
    invoke-static {}, Lcom/google/protobuf/ListFieldSchema;->full()Lcom/google/protobuf/ListFieldSchema;

    move-result-object v4

    .line 100
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->proto2UnknownFieldSetSchema()Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v5

    .line 101
    invoke-static {}, Lcom/google/protobuf/ExtensionSchemas;->full()Lcom/google/protobuf/ExtensionSchema;

    move-result-object v6

    .line 102
    invoke-static {}, Lcom/google/protobuf/MapFieldSchemas;->full()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v7

    .line 95
    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/MessageSchema;

    move-result-object v0

    goto :goto_1

    .line 103
    :cond_2
    nop

    .line 106
    invoke-static {}, Lcom/google/protobuf/NewInstanceSchemas;->full()Lcom/google/protobuf/NewInstanceSchema;

    move-result-object v3

    .line 107
    invoke-static {}, Lcom/google/protobuf/ListFieldSchema;->full()Lcom/google/protobuf/ListFieldSchema;

    move-result-object v4

    .line 108
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->proto3UnknownFieldSetSchema()Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v5

    const/4 v6, 0x0

    .line 110
    invoke-static {}, Lcom/google/protobuf/MapFieldSchemas;->full()Lcom/google/protobuf/MapFieldSchema;

    move-result-object v7

    .line 103
    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/MessageSchema;

    move-result-object v0

    .line 94
    :goto_1
    return-object v0
.end method


# virtual methods
.method public createSchema(Ljava/lang/Class;)Lcom/google/protobuf/Schema;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 53
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/protobuf/SchemaUtil;->requireGeneratedMessage(Ljava/lang/Class;)V

    .line 55
    iget-object v0, p0, Lcom/google/protobuf/ManifestSchemaFactory;->messageInfoFactory:Lcom/google/protobuf/MessageInfoFactory;

    invoke-interface {v0, p1}, Lcom/google/protobuf/MessageInfoFactory;->messageInfoFor(Ljava/lang/Class;)Lcom/google/protobuf/MessageInfo;

    move-result-object v0

    .line 58
    .local v0, "messageInfo":Lcom/google/protobuf/MessageInfo;
    invoke-interface {v0}, Lcom/google/protobuf/MessageInfo;->isMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    const-class v1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v1

    .line 62
    invoke-static {}, Lcom/google/protobuf/ExtensionSchemas;->lite()Lcom/google/protobuf/ExtensionSchema;

    move-result-object v2

    .line 63
    invoke-interface {v0}, Lcom/google/protobuf/MessageInfo;->getDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    .line 60
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/MessageSetSchema;->newSchema(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageSetSchema;

    move-result-object v1

    return-object v1

    .line 66
    :cond_0
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->proto2UnknownFieldSetSchema()Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v1

    .line 67
    invoke-static {}, Lcom/google/protobuf/ExtensionSchemas;->full()Lcom/google/protobuf/ExtensionSchema;

    move-result-object v2

    .line 68
    invoke-interface {v0}, Lcom/google/protobuf/MessageInfo;->getDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    .line 65
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/MessageSetSchema;->newSchema(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageSetSchema;

    move-result-object v1

    return-object v1

    .line 71
    :cond_1
    invoke-static {p1, v0}, Lcom/google/protobuf/ManifestSchemaFactory;->newSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;)Lcom/google/protobuf/Schema;

    move-result-object v1

    return-object v1
.end method
