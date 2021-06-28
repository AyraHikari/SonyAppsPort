.class Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$3;
.super Landroid/os/AsyncTask;
.source "GoogleSignInSignOutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->confirmSignOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;

.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;Landroid/content/Context;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$3;->this$0:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;

    iput-object p2, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$3;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 344
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    .line 348
    iget-object p1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$3;->val$appContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/music/authentication/GoogleProfile;->get(Landroid/content/Context;)Lcom/sonyericsson/music/authentication/GoogleProfile;

    move-result-object p1

    .line 349
    invoke-virtual {p1}, Lcom/sonyericsson/music/authentication/GoogleProfile;->getAccountName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 344
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$3;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 354
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$3;->this$0:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$3;->this$0:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;

    .line 355
    invoke-static {v0}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$3;->this$0:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$3;->this$0:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog$ConfirmSignOutListener;)V

    :cond_0
    return-void
.end method
