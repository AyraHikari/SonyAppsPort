.class Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$2;
.super Landroid/os/AsyncTask;
.source "GoogleSignInSignOutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->onConfirmSignOut(Z)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$2;->this$0:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 258
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 261
    iget-object p1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$2;->this$0:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;

    invoke-static {p1}, Lcom/sonyericsson/music/authentication/GoogleSignIn;->deleteProfileAndIntroShown(Landroid/content/Context;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 258
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 267
    iget-object p1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$2;->this$0:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->setResultAndFinish(I)V

    return-void
.end method
