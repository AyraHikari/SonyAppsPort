.class public final Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskBarContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainerOrBuilder;"
    }
.end annotation


# static fields
.field public static final CARDINALITY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

.field public static final INDEX_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private cardinality_:I

.field private index_:I


# direct methods
.method static bridge synthetic -$$Nest$mclearCardinality(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->clearCardinality()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearIndex(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->clearIndex()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCardinality(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->setCardinality(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetIndex(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->setIndex(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 7589
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;-><init>()V

    .line 7592
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    .line 7593
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7595
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7271
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7272
    return-void
.end method

.method private clearCardinality()V
    .locals 1

    .line 7348
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    .line 7349
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->cardinality_:I

    .line 7350
    return-void
.end method

.method private clearIndex()V
    .locals 1

    .line 7301
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    .line 7302
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->index_:I

    .line 7303
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 1

    .line 7598
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    .locals 1

    .line 7427
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    .line 7430
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7404
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7410
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7368
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7375
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7415
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7422
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7392
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7399
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7355
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7362
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7380
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7387
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;",
            ">;"
        }
    .end annotation

    .line 7604
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCardinality(I)V
    .locals 1
    .param p1, "value"    # I

    .line 7337
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    .line 7338
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->cardinality_:I

    .line 7339
    return-void
.end method

.method private setIndex(I)V
    .locals 1
    .param p1, "value"    # I

    .line 7294
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    .line 7295
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->index_:I

    .line 7296
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 7538
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 7582
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 7579
    :pswitch_0
    return-object v2

    .line 7576
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 7561
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 7562
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;>;"
    if-nez v0, :cond_1

    .line 7563
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    monitor-enter v1

    .line 7564
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 7565
    if-nez v0, :cond_0

    .line 7566
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 7569
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 7571
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 7573
    :cond_1
    :goto_0
    return-object v0

    .line 7558
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object v0

    .line 7546
    :pswitch_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bitField0_"

    aput-object v3, v0, v2

    const-string v2, "index_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cardinality_"

    aput-object v2, v0, v1

    .line 7551
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0004\u0001"

    .line 7554
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 7543
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder-IA;)V

    return-object v0

    .line 7540
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;-><init>()V

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

.method public getCardinality()I
    .locals 1

    .line 7327
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->cardinality_:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 7288
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->index_:I

    return v0
.end method

.method public hasCardinality()Z
    .locals 1

    .line 7316
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIndex()Z
    .locals 2

    .line 7281
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
