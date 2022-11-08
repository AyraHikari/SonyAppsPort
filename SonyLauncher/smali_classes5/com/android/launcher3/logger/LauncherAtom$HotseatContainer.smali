.class public final Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$HotseatContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HotseatContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$HotseatContainerOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

.field public static final INDEX_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private index_:I


# direct methods
.method static bridge synthetic -$$Nest$mclearIndex(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->clearIndex()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetIndex(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->setIndex(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 12050
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;-><init>()V

    .line 12053
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    .line 12054
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 12056
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11834
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11835
    return-void
.end method

.method private clearIndex()V
    .locals 1

    .line 11864
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->bitField0_:I

    .line 11865
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->index_:I

    .line 11866
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .locals 1

    .line 12059
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;
    .locals 1

    .line 11943
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    .line 11946
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11920
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11926
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11884
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11891
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11931
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11938
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11908
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11915
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11871
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11878
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11896
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11903
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;",
            ">;"
        }
    .end annotation

    .line 12065
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setIndex(I)V
    .locals 1
    .param p1, "value"    # I

    .line 11857
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->bitField0_:I

    .line 11858
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->index_:I

    .line 11859
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 12001
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 12043
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 12040
    :pswitch_0
    return-object v2

    .line 12037
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 12022
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 12023
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;>;"
    if-nez v0, :cond_1

    .line 12024
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    monitor-enter v1

    .line 12025
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 12026
    if-nez v0, :cond_0

    .line 12027
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 12030
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 12032
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 12034
    :cond_1
    :goto_0
    return-object v0

    .line 12019
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    return-object v0

    .line 12009
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bitField0_"

    aput-object v3, v0, v2

    const-string v2, "index_"

    aput-object v2, v0, v1

    .line 12013
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0004\u0000"

    .line 12015
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 12006
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder-IA;)V

    return-object v0

    .line 12003
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;-><init>()V

    return-object v0

    nop

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

.method public getIndex()I
    .locals 1

    .line 11851
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->index_:I

    return v0
.end method

.method public hasIndex()Z
    .locals 2

    .line 11844
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
