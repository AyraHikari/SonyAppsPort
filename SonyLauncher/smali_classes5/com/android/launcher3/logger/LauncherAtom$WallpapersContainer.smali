.class public final Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WallpapersContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainerOrBuilder;"
    }
.end annotation


# static fields
.field public static final CARDINALITY_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private cardinality_:I


# direct methods
.method static bridge synthetic -$$Nest$mclearCardinality(Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->clearCardinality()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCardinality(Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->setCardinality(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 13558
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;-><init>()V

    .line 13561
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    .line 13562
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 13564
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13306
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13307
    return-void
.end method

.method private clearCardinality()V
    .locals 1

    .line 13352
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->bitField0_:I

    .line 13353
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->cardinality_:I

    .line 13354
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;
    .locals 1

    .line 13567
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;
    .locals 1

    .line 13431
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;)Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    .line 13434
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13408
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13414
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13372
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13379
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13419
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13426
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13396
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13403
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13359
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13366
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13384
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13391
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;",
            ">;"
        }
    .end annotation

    .line 13573
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCardinality(I)V
    .locals 1
    .param p1, "value"    # I

    .line 13341
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->bitField0_:I

    .line 13342
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->cardinality_:I

    .line 13343
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 13509
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 13551
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 13548
    :pswitch_0
    return-object v2

    .line 13545
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 13530
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 13531
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;>;"
    if-nez v0, :cond_1

    .line 13532
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    monitor-enter v1

    .line 13533
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 13534
    if-nez v0, :cond_0

    .line 13535
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 13538
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 13540
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 13542
    :cond_1
    :goto_0
    return-object v0

    .line 13527
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    return-object v0

    .line 13517
    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bitField0_"

    aput-object v3, v0, v2

    const-string v2, "cardinality_"

    aput-object v2, v0, v1

    .line 13521
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0004\u0000"

    .line 13523
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 13514
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer$Builder-IA;)V

    return-object v0

    .line 13511
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;-><init>()V

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

.method public getCardinality()I
    .locals 1

    .line 13331
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->cardinality_:I

    return v0
.end method

.method public hasCardinality()Z
    .locals 2

    .line 13320
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WallpapersContainer;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
