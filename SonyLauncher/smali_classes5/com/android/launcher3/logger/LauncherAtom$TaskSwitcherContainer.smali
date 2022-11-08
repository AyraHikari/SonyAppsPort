.class public final Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskSwitcherContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainerOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 7208
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;-><init>()V

    .line 7211
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    .line 7212
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7214
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7059
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7060
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;
    .locals 1

    .line 7217
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;
    .locals 1

    .line 7136
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;)Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    .line 7139
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7113
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7119
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7077
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7084
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7124
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7131
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7101
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7108
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7064
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7071
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7089
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7096
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;",
            ">;"
        }
    .end annotation

    .line 7223
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 7163
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 7201
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 7198
    :pswitch_0
    return-object v1

    .line 7195
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 7180
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 7181
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;>;"
    if-nez v0, :cond_1

    .line 7182
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    monitor-enter v1

    .line 7183
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 7184
    if-nez v0, :cond_0

    .line 7185
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 7188
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 7190
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 7192
    :cond_1
    :goto_0
    return-object v0

    .line 7177
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    return-object v0

    .line 7171
    :pswitch_4
    const/4 v0, 0x0

    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0000"

    .line 7173
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 7168
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;

    invoke-direct {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer$Builder-IA;)V

    return-object v0

    .line 7165
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskSwitcherContainer;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
