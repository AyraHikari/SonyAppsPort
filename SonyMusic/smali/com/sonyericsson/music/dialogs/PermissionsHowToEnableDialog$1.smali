.class Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$1;
.super Ljava/lang/Object;
.source "PermissionsHowToEnableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;

    invoke-static {v0}, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;->access$000(Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 87
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$1;->this$0:Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
