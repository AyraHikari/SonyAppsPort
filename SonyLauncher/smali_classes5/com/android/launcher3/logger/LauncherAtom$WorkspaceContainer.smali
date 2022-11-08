.class public final Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WorkspaceContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainerOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

.field public static final GRID_X_FIELD_NUMBER:I = 0x2

.field public static final GRID_Y_FIELD_NUMBER:I = 0x3

.field public static final PAGE_INDEX_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private gridX_:I

.field private gridY_:I

.field private pageIndex_:I


# direct methods
.method static bridge synthetic -$$Nest$mclearGridX(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->clearGridX()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearGridY(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->clearGridY()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearPageIndex(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->clearPageIndex()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetGridX(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->setGridX(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetGridY(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->setGridY(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPageIndex(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->setPageIndex(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 11794
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;-><init>()V

    .line 11797
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    .line 11798
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11800
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 11352
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11353
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->pageIndex_:I

    .line 11354
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->gridX_:I

    .line 11355
    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->gridY_:I

    .line 11356
    return-void
.end method

.method private clearGridX()V
    .locals 1

    .line 11448
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->bitField0_:I

    .line 11449
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->gridX_:I

    .line 11450
    return-void
.end method

.method private clearGridY()V
    .locals 1

    .line 11495
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->bitField0_:I

    .line 11496
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->gridY_:I

    .line 11497
    return-void
.end method

.method private clearPageIndex()V
    .locals 2

    .line 11401
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->bitField0_:I

    const/4 v1, -0x2

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->bitField0_:I

    .line 11402
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->pageIndex_:I

    .line 11403
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 1

    .line 11803
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;
    .locals 1

    .line 11574
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    .line 11577
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11551
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11557
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11515
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11522
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11562
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11569
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11539
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11546
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11502
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11509
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11527
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11534
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;",
            ">;"
        }
    .end annotation

    .line 11809
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setGridX(I)V
    .locals 1
    .param p1, "value"    # I

    .line 11437
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->bitField0_:I

    .line 11438
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->gridX_:I

    .line 11439
    return-void
.end method

.method private setGridY(I)V
    .locals 1
    .param p1, "value"    # I

    .line 11484
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->bitField0_:I

    .line 11485
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->gridY_:I

    .line 11486
    return-void
.end method

.method private setPageIndex(I)V
    .locals 1
    .param p1, "value"    # I

    .line 11390
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->bitField0_:I

    .line 11391
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->pageIndex_:I

    .line 11392
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 11742
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 11787
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 11784
    :pswitch_0
    return-object v2

    .line 11781
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 11766
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 11767
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;>;"
    if-nez v0, :cond_1

    .line 11768
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    monitor-enter v1

    .line 11769
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 11770
    if-nez v0, :cond_0

    .line 11771
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 11774
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 11776
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 11778
    :cond_1
    :goto_0
    return-object v0

    .line 11763
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object v0

    .line 11750
    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "bitField0_"

    aput-object v3, v0, v2

    const-string v2, "pageIndex_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gridX_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gridY_"

    aput-object v2, v0, v1

    .line 11756
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0004\u0001\u0003\u0004\u0002"

    .line 11759
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 11747
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder-IA;)V

    return-object v0

    .line 11744
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;-><init>()V

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

.method public getGridX()I
    .locals 1

    .line 11427
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->gridX_:I

    return v0
.end method

.method public getGridY()I
    .locals 1

    .line 11474
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->gridY_:I

    return v0
.end method

.method public getPageIndex()I
    .locals 1

    .line 11380
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->pageIndex_:I

    return v0
.end method

.method public hasGridX()Z
    .locals 1

    .line 11416
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGridY()Z
    .locals 1

    .line 11463
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPageIndex()Z
    .locals 2

    .line 11369
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
