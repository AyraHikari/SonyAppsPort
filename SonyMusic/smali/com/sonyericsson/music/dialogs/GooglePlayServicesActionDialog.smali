.class public Lcom/sonyericsson/music/dialogs/GooglePlayServicesActionDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "GooglePlayServicesActionDialog.java"


# static fields
.field private static final ARG_KEY_ERROR_CODE:Ljava/lang/String; = "arg_key_error_code"

.field private static final ARG_KEY_REQUEST_CODE:Ljava/lang/String; = "arg_key_request_code"

.field public static final TAG:Ljava/lang/String; = "google_play_services_action_dialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(II)Lcom/sonyericsson/music/dialogs/GooglePlayServicesActionDialog;
    .locals 2

    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arg_key_error_code"

    .line 25
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "arg_key_request_code"

    .line 26
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    new-instance p0, Lcom/sonyericsson/music/dialogs/GooglePlayServicesActionDialog;

    invoke-direct {p0}, Lcom/sonyericsson/music/dialogs/GooglePlayServicesActionDialog;-><init>()V

    .line 29
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_key_error_code"

    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "arg_key_request_code"

    .line 40
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 42
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method
