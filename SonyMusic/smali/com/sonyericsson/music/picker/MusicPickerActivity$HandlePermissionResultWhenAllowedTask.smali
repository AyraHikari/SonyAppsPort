.class Lcom/sonyericsson/music/picker/MusicPickerActivity$HandlePermissionResultWhenAllowedTask;
.super Landroid/os/AsyncTask;
.source "MusicPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/picker/MusicPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlePermissionResultWhenAllowedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final TASK_HANDLE_INTENT:I = 0x0

.field static final TASK_SHOW_HOW_TO_ENABLE_DLG:I = 0x1


# instance fields
.field private final mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/picker/MusicPickerActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mTask:I


# direct methods
.method constructor <init>(ILcom/sonyericsson/music/picker/MusicPickerActivity;)V
    .locals 2

    .line 455
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 453
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity$HandlePermissionResultWhenAllowedTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 456
    iput p1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity$HandlePermissionResultWhenAllowedTask;->mTask:I

    .line 457
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity$HandlePermissionResultWhenAllowedTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 458
    iget-object p1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity$HandlePermissionResultWhenAllowedTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/picker/MusicPickerActivity;->addFragmentTransactionAllowedLatch(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .line 463
    iget-object p1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity$HandlePermissionResultWhenAllowedTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/picker/MusicPickerActivity;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 464
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity$HandlePermissionResultWhenAllowedTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    const/4 p1, 0x1

    .line 469
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 472
    :catch_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 465
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 444
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/picker/MusicPickerActivity$HandlePermissionResultWhenAllowedTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled(Ljava/lang/Boolean;)V
    .locals 1

    .line 478
    iget-object p1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity$HandlePermissionResultWhenAllowedTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/picker/MusicPickerActivity;

    if-eqz p1, :cond_0

    .line 479
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity$HandlePermissionResultWhenAllowedTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/picker/MusicPickerActivity;->removeFragmentTransactionAllowedLatch(Ljava/util/concurrent/CountDownLatch;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 444
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/picker/MusicPickerActivity$HandlePermissionResultWhenAllowedTask;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity$HandlePermissionResultWhenAllowedTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/picker/MusicPickerActivity;

    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 488
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 489
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 490
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 492
    :cond_0
    iget p1, p0, Lcom/sonyericsson/music/picker/MusicPickerActivity$HandlePermissionResultWhenAllowedTask;->mTask:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 498
    :pswitch_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/picker/MusicPickerActivity;->showHowToEnablePermissionDialog()V

    goto :goto_0

    .line 494
    :pswitch_1
    invoke-virtual {v0}, Lcom/sonyericsson/music/picker/MusicPickerActivity;->handleIntent()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 444
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/picker/MusicPickerActivity$HandlePermissionResultWhenAllowedTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
