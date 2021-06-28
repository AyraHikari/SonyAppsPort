.class Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$GetAndStoreProfileDataTask;
.super Landroid/os/AsyncTask;
.source "GoogleSignInSignOutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAndStoreProfileDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;Landroid/content/Context;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$GetAndStoreProfileDataTask;->this$0:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 392
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$GetAndStoreProfileDataTask;->mAppContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    .line 397
    aget-object p1, p1, v0

    if-eqz p1, :cond_1

    .line 399
    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {v1, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 400
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 406
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 407
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getAccount()Landroid/accounts/Account;

    move-result-object p1

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 409
    new-instance v0, Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;-><init>()V

    .line 410
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;->accountName(Ljava/lang/String;)Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;

    move-result-object p1

    .line 412
    invoke-virtual {p1}, Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;->build()Lcom/sonyericsson/music/authentication/GoogleProfile;

    move-result-object p1

    .line 414
    iget-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$GetAndStoreProfileDataTask;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/authentication/GoogleSignIn;->saveProfileAndIntroShown(Landroid/content/Context;Lcom/sonyericsson/music/authentication/GoogleProfile;)V

    const/4 p1, -0x1

    .line 416
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 421
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 387
    check-cast p1, [Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$GetAndStoreProfileDataTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$GetAndStoreProfileDataTask;->this$0:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->onProfileDataStored(I)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 387
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$GetAndStoreProfileDataTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
