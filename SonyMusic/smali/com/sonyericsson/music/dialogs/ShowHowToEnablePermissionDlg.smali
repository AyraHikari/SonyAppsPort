.class public Lcom/sonyericsson/music/dialogs/ShowHowToEnablePermissionDlg;
.super Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$ToDoWhenFragmentAllowed;
.source "ShowHowToEnablePermissionDlg.java"


# instance fields
.field private final mFinishWhenCancel:Z

.field private final mFinishWhenContinue:Z

.field private final mPermissions:[Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;


# direct methods
.method public constructor <init>([Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0, v0}, Lcom/sonyericsson/music/dialogs/ShowHowToEnablePermissionDlg;-><init>([Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;ZZ)V

    return-void
.end method

.method public constructor <init>([Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;ZZ)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/sonyericsson/music/common/ToDoWhenFragmentAllowedTask$ToDoWhenFragmentAllowed;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/ShowHowToEnablePermissionDlg;->mPermissions:[Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;

    .line 28
    iput-boolean p2, p0, Lcom/sonyericsson/music/dialogs/ShowHowToEnablePermissionDlg;->mFinishWhenContinue:Z

    .line 29
    iput-boolean p3, p0, Lcom/sonyericsson/music/dialogs/ShowHowToEnablePermissionDlg;->mFinishWhenCancel:Z

    return-void
.end method


# virtual methods
.method public run(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    invoke-static {p1}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "permission_dialog_tag"

    .line 38
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/ShowHowToEnablePermissionDlg;->mPermissions:[Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;

    iget-boolean v1, p0, Lcom/sonyericsson/music/dialogs/ShowHowToEnablePermissionDlg;->mFinishWhenContinue:Z

    iget-boolean v2, p0, Lcom/sonyericsson/music/dialogs/ShowHowToEnablePermissionDlg;->mFinishWhenCancel:Z

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog;->newInstance([Lcom/sonyericsson/music/dialogs/PermissionsHowToEnableDialog$PermissionInfo;ZZ)Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    const-string v1, "permission_dialog_tag"

    .line 43
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
