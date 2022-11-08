.class public Lcom/android/launcher3/util/ViewOnDrawExecutor;
.super Ljava/lang/Object;
.source "ViewOnDrawExecutor.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Ljava/lang/Runnable;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private mAttachedView:Landroid/view/View;

.field private mCancelled:Z

.field private mCompleted:Z

.field private mFirstDrawCompleted:Z

.field private mLoadAnimationCompleted:Z

.field private mOnClearCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/util/ViewOnDrawExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final mTasks:Lcom/android/launcher3/util/RunnableList;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/RunnableList;)V
    .locals 0
    .param p1, "tasks"    # Lcom/android/launcher3/util/RunnableList;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mTasks:Lcom/android/launcher3/util/RunnableList;

    .line 46
    return-void
.end method

.method private attachObserver()V
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mCompleted:Z

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public attachTo(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 49
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/util/ViewOnDrawExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/ViewOnDrawExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mOnClearCallback:Ljava/util/function/Consumer;

    .line 50
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    .line 51
    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->attachObserver()V

    .line 56
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mCancelled:Z

    .line 112
    invoke-virtual {p0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->markCompleted()V

    .line 113
    return-void
.end method

.method public markCompleted()V
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mCancelled:Z

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mTasks:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    .line 100
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mCompleted:Z

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mOnClearCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_2

    .line 106
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 108
    :cond_2
    return-void
.end method

.method public onDraw()V
    .locals 1

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mFirstDrawCompleted:Z

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method

.method public onLoadAnimationCompleted()V
    .locals 1

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mLoadAnimationCompleted:Z

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 83
    :cond_0
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 66
    invoke-direct {p0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->attachObserver()V

    .line 67
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 70
    return-void
.end method

.method public run()V
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mLoadAnimationCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mFirstDrawCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mCompleted:Z

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->markCompleted()V

    .line 91
    :cond_0
    return-void
.end method
