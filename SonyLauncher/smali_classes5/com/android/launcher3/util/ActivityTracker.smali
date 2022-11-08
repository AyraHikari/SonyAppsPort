.class public final Lcom/android/launcher3/util/ActivityTracker;
.super Ljava/lang/Object;
.source "ActivityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/BaseActivity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mCurrentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    .local p0, "this":Lcom/android/launcher3/util/ActivityTracker;, "Lcom/android/launcher3/util/ActivityTracker<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private handleIntent(Lcom/android/launcher3/BaseActivity;Z)Z
    .locals 4
    .param p2, "alreadyOnHome"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/android/launcher3/util/ActivityTracker;, "Lcom/android/launcher3/util/ActivityTracker<TT;>;"
    .local p1, "activity":Lcom/android/launcher3/BaseActivity;, "TT;"
    const/4 v0, 0x0

    .line 84
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/android/launcher3/util/ActivityTracker;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;

    .line 85
    .local v2, "cb":Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;, "Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback<TT;>;"
    invoke-interface {v2, p1, p2}, Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;->init(Lcom/android/launcher3/BaseActivity;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    invoke-virtual {p0, v2}, Lcom/android/launcher3/util/ActivityTracker;->unregisterCallback(Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;)V

    .line 89
    :cond_0
    const/4 v0, 0x1

    .line 90
    .end local v2    # "cb":Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;, "Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback<TT;>;"
    goto :goto_0

    .line 91
    :cond_1
    return v0
.end method


# virtual methods
.method public getCreatedActivity()Lcom/android/launcher3/BaseActivity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:TT;>()TR;"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/android/launcher3/util/ActivityTracker;, "Lcom/android/launcher3/util/ActivityTracker<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    return-object v0
.end method

.method public handleCreate(Lcom/android/launcher3/BaseActivity;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/android/launcher3/util/ActivityTracker;, "Lcom/android/launcher3/util/ActivityTracker<TT;>;"
    .local p1, "activity":Lcom/android/launcher3/BaseActivity;, "TT;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/util/ActivityTracker;->handleIntent(Lcom/android/launcher3/BaseActivity;Z)Z

    move-result v0

    return v0
.end method

.method public handleNewIntent(Lcom/android/launcher3/BaseActivity;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/android/launcher3/util/ActivityTracker;, "Lcom/android/launcher3/util/ActivityTracker<TT;>;"
    .local p1, "activity":Lcom/android/launcher3/BaseActivity;, "TT;"
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/util/ActivityTracker;->handleIntent(Lcom/android/launcher3/BaseActivity;Z)Z

    move-result v0

    return v0
.end method

.method public onActivityDestroyed(Lcom/android/launcher3/BaseActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/android/launcher3/util/ActivityTracker;, "Lcom/android/launcher3/util/ActivityTracker<TT;>;"
    .local p1, "activity":Lcom/android/launcher3/BaseActivity;, "TT;"
    iget-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 45
    :cond_0
    return-void
.end method

.method public registerCallback(Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/android/launcher3/util/ActivityTracker;, "Lcom/android/launcher3/util/ActivityTracker<TT;>;"
    .local p1, "callback":Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;, "Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseActivity;

    .line 58
    .local v0, "activity":Lcom/android/launcher3/BaseActivity;, "TT;"
    iget-object v1, p0, Lcom/android/launcher3/util/ActivityTracker;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;->init(Lcom/android/launcher3/BaseActivity;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/ActivityTracker;->unregisterCallback(Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;)V

    .line 64
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/android/launcher3/util/ActivityTracker;, "Lcom/android/launcher3/util/ActivityTracker<TT;>;"
    .local p1, "callback":Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;, "Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/util/ActivityTracker;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method
