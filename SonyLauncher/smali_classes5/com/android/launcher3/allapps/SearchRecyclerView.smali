.class public Lcom/android/launcher3/allapps/SearchRecyclerView;
.super Lcom/android/launcher3/allapps/AllAppsRecyclerView;
.source "SearchRecyclerView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchRecyclerView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/SearchRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/SearchRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/allapps/SearchRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    return-void
.end method


# virtual methods
.method public getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;
    .locals 1

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public supportsFastScrolling()Z
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method protected updatePoolSize()V
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/SearchRecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    .line 47
    .local v0, "pool":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    iget v1, p0, Lcom/android/launcher3/allapps/SearchRecyclerView;->mNumAppsPerRow:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 49
    return-void
.end method
