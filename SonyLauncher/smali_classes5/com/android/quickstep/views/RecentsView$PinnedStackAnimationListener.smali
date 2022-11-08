.class Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;
.super Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;
.source "RecentsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PinnedStackAnimationListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/BaseActivity;",
        ">",
        "Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;"
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/launcher3/BaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRecentsView:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5194
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;, "Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener<TT;>;"
    invoke-direct {p0}, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onExpandPip$1$com-android-quickstep-views-RecentsView$PinnedStackAnimationListener()V
    .locals 1

    .line 5229
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;, "Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener<TT;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    .line 5230
    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5235
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    iget-object v0, v0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onExpandPip()V

    .line 5236
    return-void

    .line 5231
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$onPipAnimationStarted$0$com-android-quickstep-views-RecentsView$PinnedStackAnimationListener()V
    .locals 2

    .line 5212
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;, "Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener<TT;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->mActivity:Lcom/android/launcher3/BaseActivity;

    if-eqz v0, :cond_0

    .line 5213
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseActivity;->clearForceInvisibleFlag(I)V

    .line 5215
    :cond_0
    return-void
.end method

.method public onExpandPip()V
    .locals 2

    .line 5228
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;, "Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener<TT;>;"
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 5237
    return-void
.end method

.method public onPipAnimationStarted()V
    .locals 2

    .line 5209
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;, "Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener<TT;>;"
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 5216
    return-void
.end method

.method public onPipResourceDimensionsChanged(II)V
    .locals 1
    .param p1, "cornerRadius"    # I
    .param p2, "shadowRadius"    # I

    .line 5220
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;, "Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener<TT;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    .line 5221
    invoke-static {v0, p1}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$fputmPipCornerRadius(Lcom/android/quickstep/views/RecentsView;I)V

    .line 5222
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v0, p2}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$fputmPipShadowRadius(Lcom/android/quickstep/views/RecentsView;I)V

    .line 5224
    :cond_0
    return-void
.end method

.method public setActivityAndRecentsView(Lcom/android/launcher3/BaseActivity;Lcom/android/quickstep/views/RecentsView;)V
    .locals 0
    .param p2, "recentsView"    # Lcom/android/quickstep/views/RecentsView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/quickstep/views/RecentsView;",
            ")V"
        }
    .end annotation

    .line 5203
    .local p0, "this":Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;, "Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener<TT;>;"
    .local p1, "activity":Lcom/android/launcher3/BaseActivity;, "TT;"
    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->mActivity:Lcom/android/launcher3/BaseActivity;

    .line 5204
    iput-object p2, p0, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 5205
    return-void
.end method
