.class public Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;
.super Landroid/os/AsyncTask;
.source "ToDoWhenFragmentAllowedTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$ToDoWhenFragmentAllowed;,
        Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$FragmentAllowedLatchHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mLatchHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$FragmentAllowedLatchHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mToDo:Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$ToDoWhenFragmentAllowed;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$FragmentAllowedLatchHandler;Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$ToDoWhenFragmentAllowed;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 41
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;->mLatchHandler:Ljava/lang/ref/WeakReference;

    .line 44
    iget-object p1, p0, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p2, p1}, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$FragmentAllowedLatchHandler;->addFragmentTransactionAllowedLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 46
    iput-object p3, p0, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;->mToDo:Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$ToDoWhenFragmentAllowed;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 52
    iget-object p1, p0, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;->mLatchHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$FragmentAllowedLatchHandler;

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 69
    iget-object p1, p0, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$FragmentAllowedLatchHandler;->removeFragmentTransactionAllowedLatch(Ljava/util/concurrent/CountDownLatch;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask;->mToDo:Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$ToDoWhenFragmentAllowed;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$ToDoWhenFragmentAllowed;->run(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method
