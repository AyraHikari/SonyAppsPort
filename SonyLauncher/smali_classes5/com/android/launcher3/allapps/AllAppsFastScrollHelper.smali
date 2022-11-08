.class public Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;
.super Ljava/lang/Object;
.source "AllAppsFastScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;
    }
.end annotation


# static fields
.field private static final NO_POSITION:I = -0x1


# instance fields
.field private mLastSelectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field private mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field private mTargetFastScrollPosition:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmLastSelectedViewHolder(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mLastSelectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRv(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargetFastScrollPosition(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmLastSelectedViewHolder(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mLastSelectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLastHolderSelected(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->setLastHolderSelected(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .locals 1
    .param p1, "rv"    # Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    .line 33
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 34
    return-void
.end method

.method private setLastHolderSelected(Z)V
    .locals 2
    .param p1, "isSelected"    # Z

    .line 55
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mLastSelectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mLastSelectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public onFastScrollCompleted()V
    .locals 1

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->setLastHolderSelected(Z)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mLastSelectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 51
    return-void
.end method

.method public smoothScrollToSection(Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 40
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    iget v1, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->position:I

    if-ne v0, v1, :cond_0

    .line 41
    return-void

    .line 43
    :cond_0
    iget v0, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->position:I

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;

    iget v2, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;-><init>(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 45
    return-void
.end method
