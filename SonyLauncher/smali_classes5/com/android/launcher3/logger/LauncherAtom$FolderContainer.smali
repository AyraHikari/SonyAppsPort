.class public final Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$FolderContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FolderContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;,
        Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$FolderContainerOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

.field public static final GRID_X_FIELD_NUMBER:I = 0x2

.field public static final GRID_Y_FIELD_NUMBER:I = 0x3

.field public static final HOTSEAT_FIELD_NUMBER:I = 0x5

.field public static final PAGE_INDEX_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TASKBAR_FIELD_NUMBER:I = 0x6

.field public static final WORKSPACE_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private gridX_:I

.field private gridY_:I

.field private pageIndex_:I

.field private parentContainerCase_:I

.field private parentContainer_:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$mclearGridX(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->clearGridX()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearGridY(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->clearGridY()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearHotseat(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->clearHotseat()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearPageIndex(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->clearPageIndex()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearParentContainer(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->clearParentContainer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearTaskbar(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->clearTaskbar()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearWorkspace(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->clearWorkspace()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeHotseat(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->mergeHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeTaskbar(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->mergeTaskbar(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmergeWorkspace(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->mergeWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetGridX(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->setGridX(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetGridY(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->setGridY(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHotseat(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->setHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHotseat(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->setHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPageIndex(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->setPageIndex(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTaskbar(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->setTaskbar(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTaskbar(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->setTaskbar(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetWorkspace(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetWorkspace(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 13254
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;-><init>()V

    .line 13257
    .local v0, "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    .line 13258
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 13260
    .end local v0    # "defaultInstance":Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 12514
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12520
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    .line 12515
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->pageIndex_:I

    .line 12516
    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridX_:I

    .line 12517
    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridY_:I

    .line 12518
    return-void
.end method

.method private clearGridX()V
    .locals 1

    .line 12625
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    .line 12626
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridX_:I

    .line 12627
    return-void
.end method

.method private clearGridY()V
    .locals 1

    .line 12656
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    .line 12657
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridY_:I

    .line 12658
    return-void
.end method

.method private clearHotseat()V
    .locals 2

    .line 12778
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 12779
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    .line 12780
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    .line 12782
    :cond_0
    return-void
.end method

.method private clearPageIndex()V
    .locals 1

    .line 12594
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    .line 12595
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->pageIndex_:I

    .line 12596
    return-void
.end method

.method private clearParentContainer()V
    .locals 1

    .line 12563
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    .line 12564
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    .line 12565
    return-void
.end method

.method private clearTaskbar()V
    .locals 2

    .line 12840
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 12841
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    .line 12842
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    .line 12844
    :cond_0
    return-void
.end method

.method private clearWorkspace()V
    .locals 2

    .line 12716
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 12717
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    .line 12718
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    .line 12720
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    .locals 1

    .line 13263
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object v0
.end method

.method private mergeHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    .line 12762
    if-eqz p1, :cond_1

    .line 12765
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    .line 12766
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 12767
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;

    move-result-object v0

    .line 12768
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    goto :goto_0

    .line 12770
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    .line 12772
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    .line 12773
    return-void

    .line 12763
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeTaskbar(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    .line 12824
    if-eqz p1, :cond_1

    .line 12827
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    .line 12828
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 12829
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    move-result-object v0

    .line 12830
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    goto :goto_0

    .line 12832
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    .line 12834
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    .line 12835
    return-void

    .line 12825
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private mergeWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V
    .locals 3
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    .line 12700
    if-eqz p1, :cond_1

    .line 12703
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    .line 12704
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 12705
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v0

    .line 12706
    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    goto :goto_0

    .line 12708
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    .line 12710
    :goto_0
    iput v1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    .line 12711
    return-void

    .line 12701
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1

    .line 12921
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    .line 12924
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12898
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12904
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12862
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12869
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12909
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12916
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12886
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12893
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12849
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12856
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12874
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12881
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;",
            ">;"
        }
    .end annotation

    .line 13269
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setGridX(I)V
    .locals 1
    .param p1, "value"    # I

    .line 12618
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    .line 12619
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridX_:I

    .line 12620
    return-void
.end method

.method private setGridY(I)V
    .locals 1
    .param p1, "value"    # I

    .line 12649
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    .line 12650
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridY_:I

    .line 12651
    return-void
.end method

.method private setHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;

    .line 12755
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    .line 12756
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    .line 12757
    return-void
.end method

.method private setHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    .line 12744
    if-eqz p1, :cond_0

    .line 12747
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    .line 12748
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    .line 12749
    return-void

    .line 12745
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setPageIndex(I)V
    .locals 1
    .param p1, "value"    # I

    .line 12587
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    .line 12588
    iput p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->pageIndex_:I

    .line 12589
    return-void
.end method

.method private setTaskbar(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    .line 12817
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    .line 12818
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    .line 12819
    return-void
.end method

.method private setTaskbar(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    .line 12806
    if-eqz p1, :cond_0

    .line 12809
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    .line 12810
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    .line 12811
    return-void

    .line 12807
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)V
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    .line 12693
    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    .line 12694
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    .line 12695
    return-void
.end method

.method private setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    .line 12682
    if-eqz p1, :cond_0

    .line 12685
    iput-object p1, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    .line 12686
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    .line 12687
    return-void

    .line 12683
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 13197
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 13247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 13244
    :pswitch_0
    return-object v2

    .line 13241
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 13226
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 13227
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;>;"
    if-nez v0, :cond_1

    .line 13228
    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    monitor-enter v1

    .line 13229
    :try_start_0
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 13230
    if-nez v0, :cond_0

    .line 13231
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 13234
    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->PARSER:Lcom/google/protobuf/Parser;

    .line 13236
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 13238
    :cond_1
    :goto_0
    return-object v0

    .line 13223
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;>;"
    :pswitch_3
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    return-object v0

    .line 13205
    :pswitch_4
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "parentContainer_"

    aput-object v3, v0, v2

    const-string v2, "parentContainerCase_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bitField0_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pageIndex_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "gridX_"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "gridY_"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    aput-object v2, v0, v1

    .line 13216
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0006\u0001\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0004\u0001\u0003\u0004\u0002\u0004<\u0000\u0005<\u0000\u0006<\u0000"

    .line 13219
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 13202
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;

    invoke-direct {v0, v2}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;-><init>(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder-IA;)V

    return-object v0

    .line 13199
    :pswitch_6
    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;-><init>()V

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

.method public getGridX()I
    .locals 1

    .line 12612
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridX_:I

    return v0
.end method

.method public getGridY()I
    .locals 1

    .line 12643
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->gridY_:I

    return v0
.end method

.method public getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .locals 2

    .line 12735
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 12736
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    return-object v0

    .line 12738
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object v0

    return-object v0
.end method

.method public getPageIndex()I
    .locals 1

    .line 12581
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->pageIndex_:I

    return v0
.end method

.method public getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;
    .locals 1

    .line 12558
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    move-result-object v0

    return-object v0
.end method

.method public getTaskbar()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 2

    .line 12797
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 12798
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    return-object v0

    .line 12800
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 2

    .line 12673
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 12674
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainer_:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    return-object v0

    .line 12676
    :cond_0
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v0

    return-object v0
.end method

.method public hasGridX()Z
    .locals 1

    .line 12605
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

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

    .line 12636
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHotseat()Z
    .locals 2

    .line 12728
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPageIndex()Z
    .locals 2

    .line 12574
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTaskbar()Z
    .locals 2

    .line 12790
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWorkspace()Z
    .locals 2

    .line 12666
    iget v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->parentContainerCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
