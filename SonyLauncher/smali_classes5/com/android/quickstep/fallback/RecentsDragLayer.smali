.class public Lcom/android/quickstep/fallback/RecentsDragLayer;
.super Lcom/android/launcher3/views/BaseDragLayer;
.source "RecentsDragLayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/BaseDragLayer<",
        "Lcom/android/quickstep/RecentsActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/BaseDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method


# virtual methods
.method public recreateControllers()V
    .locals 3

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher3/util/TouchController;

    new-instance v1, Lcom/android/quickstep/fallback/RecentsTaskController;

    iget-object v2, p0, Lcom/android/quickstep/fallback/RecentsDragLayer;->mActivity:Landroid/content/Context;

    check-cast v2, Lcom/android/quickstep/RecentsActivity;

    invoke-direct {v1, v2}, Lcom/android/quickstep/fallback/RecentsTaskController;-><init>(Lcom/android/quickstep/RecentsActivity;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/quickstep/fallback/FallbackNavBarTouchController;

    iget-object v2, p0, Lcom/android/quickstep/fallback/RecentsDragLayer;->mActivity:Landroid/content/Context;

    check-cast v2, Lcom/android/quickstep/RecentsActivity;

    invoke-direct {v1, v2}, Lcom/android/quickstep/fallback/FallbackNavBarTouchController;-><init>(Lcom/android/quickstep/RecentsActivity;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/quickstep/fallback/RecentsDragLayer;->mControllers:[Lcom/android/launcher3/util/TouchController;

    .line 40
    return-void
.end method
