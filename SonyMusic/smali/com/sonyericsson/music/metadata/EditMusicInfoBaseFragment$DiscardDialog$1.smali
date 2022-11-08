.class Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog$1;
.super Ljava/lang/Object;
.source "EditMusicInfoBaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog$1;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 787
    iget-object p2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog$1;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$DiscardDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 788
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 789
    invoke-virtual {p2, v0}, Landroid/app/Activity;->setResult(I)V

    .line 790
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 792
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
