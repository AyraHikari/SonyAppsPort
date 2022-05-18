.class Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2$1;
.super Ljava/lang/Object;
.source "PlayqueueFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;

.field final synthetic val$itemsToAdd:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;Ljava/util/ArrayList;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2$1;->this$1:Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;

    iput-object p2, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2$1;->val$itemsToAdd:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2$1;->this$1:Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;

    iget-object v0, v0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;->this$0:Lcom/sonyericsson/music/playqueue/PlayqueueFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_2

    .line 472
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2$1;->this$1:Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;

    iget-boolean v1, v1, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;->displayAdditionalMessage:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2$1;->val$itemsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 474
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 475
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1001d3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 473
    invoke-static {v1, v0, v2}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    .line 480
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 481
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2$1;->this$1:Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;

    iget-boolean v1, v1, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;->displayAdditionalMessage:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 482
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001c4

    .line 483
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 486
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2$1;->val$itemsToAdd:Ljava/util/ArrayList;

    .line 487
    invoke-static {v2, v1, v0}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->newLocalInstance(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;

    .line 488
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2$1;->this$1:Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;

    iget-object v1, v1, Lcom/sonyericsson/music/playqueue/PlayqueueFragment$2;->val$manager:Landroidx/fragment/app/FragmentManager;

    const-string v2, "input_dialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
