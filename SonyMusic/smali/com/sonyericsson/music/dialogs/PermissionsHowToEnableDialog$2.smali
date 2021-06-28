.class Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$2;
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

    .line 92
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 95
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package:com.sonyericsson.music"

    .line 102
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :catch_0
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;

    invoke-static {v0}, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;->access$100(Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 113
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void

    .line 97
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$2;->this$0:Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
