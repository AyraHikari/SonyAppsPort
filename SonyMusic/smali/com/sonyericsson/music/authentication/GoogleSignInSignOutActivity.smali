.class public Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;
.super Lcom/sonyericsson/music/ThemedActivity;
.source "GoogleSignInSignOutActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog$ConfirmSignOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$GetAndStoreProfileDataTask;,
        Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;
    }
.end annotation


# static fields
.field private static final GOOGLE_SIGN_IN_REQUEST:I = 0x1


# instance fields
.field private KEY_GOOGLE_API_RECONNECTED:Ljava/lang/String;

.field private mAction:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

.field private mGetAndStoreProfileTask:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$GetAndStoreProfileDataTask;

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mReconnected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/sonyericsson/music/ThemedActivity;-><init>()V

    const-string v0, "key_google_api_reconnected"

    .line 91
    iput-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->KEY_GOOGLE_API_RECONNECTED:Ljava/lang/String;

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mReconnected:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->googleSignIn()V

    return-void
.end method

.method private adjustUi(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    invoke-static {p1, v0, v1, p0}, Lcom/sonyericsson/music/common/UIUtils;->setSystemUIVisibility(Landroid/view/View;IILandroid/app/Activity;)V

    .line 186
    invoke-static {p1, v0, v0}, Lcom/sonyericsson/music/common/UIUtils;->setSystemUIVisibilityPreKK(Landroid/view/View;IZ)Z

    const v0, 0x7f09024a

    .line 192
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/authentication/SignInIntroductionFragmentShadowWrapper;

    const v1, 0x7f090175

    .line 193
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 195
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    .line 197
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->isUseDarkTheme(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    invoke-static {}, Lcom/sonyericsson/music/common/UIUtils;->getStatusBarHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/authentication/SignInIntroductionFragmentShadowWrapper;->setShadowHeight(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 199
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/ui/ShadowLayout;->setShadowAlpha(F)V

    .line 200
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    .line 201
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    invoke-static {}, Lcom/sonyericsson/music/common/UIUtils;->getStatusBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    .line 200
    invoke-virtual {v1, v0, v2, v3, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private confirmSignOut()V
    .locals 3

    .line 340
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 344
    new-instance v1, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$3;-><init>(Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;Landroid/content/Context;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 362
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private static createStartupIntent(Landroid/content/Context;Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;)Landroid/content/Intent;
    .locals 1

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->getIntentAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    const-class p1, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method

.method private getResultIntent()Landroid/content/Intent;
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mAction:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->getIntentAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 379
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private googleSignIn()V
    .locals 2

    .line 333
    invoke-direct {p0}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->isGoogleApiClientConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 335
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private initGoogleApiClient()V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>()V

    .line 321
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 322
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 324
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->GOOGLE_SIGN_IN_API:Lcom/google/android/gms/common/api/Api;

    .line 325
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 326
    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 327
    invoke-virtual {v1, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->enableAutoManage(Landroidx/fragment/app/FragmentActivity;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 328
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    :cond_0
    return-void
.end method

.method private isGoogleApiClientConnected()Z
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->GOOGLE_SIGN_IN_API:Lcom/google/android/gms/common/api/Api;

    .line 314
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static shouldLaunchDriveFragmentAfterResult(Landroid/content/Intent;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 108
    :goto_0
    invoke-static {p0}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->getAction(Ljava/lang/String;)Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->isLaunchDriveFragmentAfterSignIn()Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static startForResult(Landroid/app/Activity;Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;I)V
    .locals 0

    .line 102
    invoke-static {p0, p1}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->createStartupIntent(Landroid/content/Context;Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 278
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 295
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->setResultAndFinish(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 283
    iget-object p1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mGetAndStoreProfileTask:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$GetAndStoreProfileDataTask;

    if-eqz p1, :cond_1

    .line 284
    invoke-virtual {p1, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 288
    :cond_1
    new-instance p1, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$GetAndStoreProfileDataTask;

    invoke-direct {p1, p0, p0}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$GetAndStoreProfileDataTask;-><init>(Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mGetAndStoreProfileTask:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$GetAndStoreProfileDataTask;

    .line 289
    iget-object p1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mGetAndStoreProfileTask:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$GetAndStoreProfileDataTask;

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Landroid/content/Intent;

    aput-object p3, v1, v0

    .line 290
    invoke-virtual {p1, p2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 302
    invoke-direct {p0}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->getResultIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mGetAndStoreProfileTask:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$GetAndStoreProfileDataTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 305
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mGetAndStoreProfileTask:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$GetAndStoreProfileDataTask;

    .line 309
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onConfirmSignOut(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->isGoogleApiClientConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 255
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    .line 258
    new-instance p1, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$2;

    invoke-direct {p1, p0}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$2;-><init>(Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    .line 269
    invoke-virtual {p1, v1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->setResultAndFinish(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0

    .line 224
    iget-object p1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mAction:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    invoke-virtual {p1}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->isSignOutAction()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->confirmSignOut()V

    goto :goto_0

    .line 231
    :cond_0
    iget-boolean p1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mReconnected:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->isGoogleApiClientConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 232
    iget-object p1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;

    const/4 p1, 0x1

    .line 233
    iput-boolean p1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mReconnected:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    const p1, 0x7f100153

    const/4 v0, 0x1

    .line 245
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    const/4 p1, 0x0

    .line 246
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->setResultAndFinish(I)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 120
    invoke-super {p0, p1}, Lcom/sonyericsson/music/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->setDefaultLightSystemUI(Landroid/app/Activity;)V

    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->KEY_GOOGLE_API_RECONNECTED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mReconnected:Z

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->initGoogleApiClient()V

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 132
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->getAction(Ljava/lang/String;)Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mAction:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    .line 143
    iget-object p1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mAction:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    if-nez p1, :cond_2

    .line 148
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->setResultAndFinish(I)V

    return-void

    .line 150
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->isSignOutAction()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const p1, 0x7f0c00b0

    const/4 v0, 0x0

    .line 156
    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 157
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->adjustUi(Landroid/view/View;)V

    const v0, 0x7f09005b

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/SignInButton;

    .line 162
    new-instance v0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$1;-><init>(Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/SignInButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 138
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->setResultAndFinish(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 212
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog;->setConfirmSignOutListener(Landroidx/fragment/app/FragmentManager;Lcom/sonyericsson/music/dialogs/ConfirmSignOutDialog$ConfirmSignOutListener;)V

    .line 214
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method onProfileDataStored(I)V
    .locals 1

    const/4 v0, 0x0

    .line 367
    iput-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mGetAndStoreProfileTask:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$GetAndStoreProfileDataTask;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 371
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setGoogleDriveCardDismissed(Landroid/content/Context;)V

    .line 374
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->setResultAndFinish(I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 178
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->KEY_GOOGLE_API_RECONNECTED:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->mReconnected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected provideTheme()Lcom/sonyericsson/music/ThemedActivity$Theme;
    .locals 1

    .line 219
    sget-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->SETTINGS_FULLSCREEN_DIALOG:Lcom/sonyericsson/music/ThemedActivity$Theme;

    return-object v0
.end method

.method setResultAndFinish(I)V
    .locals 1

    .line 383
    invoke-direct {p0}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->getResultIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 384
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
