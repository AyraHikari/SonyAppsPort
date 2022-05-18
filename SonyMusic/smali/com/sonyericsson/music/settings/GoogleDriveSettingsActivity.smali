.class public Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;
.super Lcom/sonyericsson/music/ThemedActivity;
.source "GoogleDriveSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$GoogleDriveConnectionSettingListener;
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/music/ThemedActivity;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$GoogleDriveConnectionSettingListener;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field private static final KEY_IS_SIGNED_IN:Ljava/lang/String; = "is_signed_in"

.field private static final REQUEST_CODE_SIGN_OUT:I = 0x1

.field private static final SETTINGS_LOADER:I = 0x0

.field public static final TAG:Ljava/lang/String; = "GoogleDriveSettingsActivity"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mGoogleDriveConnection:Landroid/view/View;

.field private mGoogleDriveConnectionSubtitle:Landroid/widget/TextView;

.field private mGoogleDriveSignInSignOut:Landroid/view/View;

.field private mGoogleDriveSignInSignOutSubtitle:Landroid/widget/TextView;

.field private mGoogleDriveSignInSignOutTitle:Landroid/widget/TextView;

.field private mPreferredDownloadConnectionSetting:I

.field private msIsSignedIn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/sonyericsson/music/ThemedActivity;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mPreferredDownloadConnectionSetting:I

    return-void
.end method

.method private static backOutOfGoogleDriveFragment(Landroid/app/Activity;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 290
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extra_pop_google_drive"

    const/4 v2, 0x1

    .line 292
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 293
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private destroyLoader()V
    .locals 2

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method

.method private static finishAndLaunchGoogleDrive(Landroid/app/Activity;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extra_launch_google_drive"

    const/4 v2, 0x1

    .line 300
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 301
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 302
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private initLoader()V
    .locals 3

    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method private setGoogleDriveConnectionSettingListener(Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$GoogleDriveConnectionSettingListener;)V
    .locals 2

    .line 280
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "GoogleDriveConnectionSettingsDialog"

    .line 281
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    instance-of v1, v0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;

    if-eqz v1, :cond_0

    .line 283
    check-cast v0, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;

    .line 285
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;->setGoogleDriveConnectionSettingListener(Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$GoogleDriveConnectionSettingListener;)V

    :cond_0
    return-void
.end method

.method private signOutFromGoogleDrive()V
    .locals 2

    .line 274
    sget-object v0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->SETTINGS_SIGN_OUT:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;->startForResult(Landroid/app/Activity;Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;I)V

    return-void
.end method

.method private updateGoogleDriveConnectionSetting(I)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveConnection:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    .line 252
    iget-object p1, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveConnectionSubtitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveConnectionSubtitle:Landroid/widget/TextView;

    const v0, 0x7f1001f0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveConnectionSubtitle:Landroid/widget/TextView;

    const v0, 0x7f1001f1

    .line 247
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateGoogleDriveSignInSignOutSetting(ZLjava/lang/String;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveSignInSignOut:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 262
    iget-object p1, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveSignInSignOutTitle:Landroid/widget/TextView;

    const v0, 0x7f100205

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 263
    iget-object p1, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveSignInSignOutSubtitle:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveSignInSignOutTitle:Landroid/widget/TextView;

    const p2, 0x7f100204

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 267
    iget-object p1, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveSignInSignOutSubtitle:Landroid/widget/TextView;

    const p2, 0x7f1001f6

    .line 268
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 214
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 220
    invoke-static {p0}, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->backOutOfGoogleDriveFragment(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 222
    iput-boolean p1, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->msIsSignedIn:Z

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09018f

    if-eq p1, v0, :cond_2

    const v0, 0x7f0901cd

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    iget-boolean p1, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->msIsSignedIn:Z

    if-eqz p1, :cond_1

    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 160
    invoke-direct {p0}, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->signOutFromGoogleDrive()V

    goto :goto_0

    .line 165
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->finishAndLaunchGoogleDrive(Landroid/app/Activity;)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 148
    iget p1, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mPreferredDownloadConnectionSetting:I

    .line 150
    invoke-static {p1}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;->newInstance(I)Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;

    move-result-object p1

    .line 151
    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog;->setGoogleDriveConnectionSettingListener(Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$GoogleDriveConnectionSettingListener;)V

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "GoogleDriveConnectionSettingsDialog"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 61
    invoke-super {p0, p1}, Lcom/sonyericsson/music/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->setDefaultLightSystemUI(Landroid/app/Activity;)V

    .line 65
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 67
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x7f1001f8

    .line 68
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    const v0, 0x7f0c0045

    .line 71
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v0, 0x7f09018f

    .line 73
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveConnection:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveConnection:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901cd

    .line 76
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveSignInSignOut:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveSignInSignOut:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090191

    .line 79
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveConnectionSubtitle:Landroid/widget/TextView;

    const v0, 0x7f0901ce

    .line 82
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveSignInSignOutTitle:Landroid/widget/TextView;

    const v0, 0x7f0901cf

    .line 83
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveSignInSignOutSubtitle:Landroid/widget/TextView;

    .line 85
    invoke-static {p0}, Lcom/sonyericsson/music/common/ThemeColor;->secondaryText(Landroid/content/Context;)I

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveConnectionSubtitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v1, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveSignInSignOutSubtitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p1, :cond_1

    const-string v0, "is_signed_in"

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->msIsSignedIn:Z

    const-string v0, "account_name"

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mAccountName:Ljava/lang/String;

    :cond_1
    const/4 p1, -0x1

    .line 94
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->updateGoogleDriveConnectionSetting(I)V

    .line 95
    iget-boolean p1, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->msIsSignedIn:Z

    iget-object v0, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mAccountName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->updateGoogleDriveSignInSignOutSetting(ZLjava/lang/String;)V

    .line 99
    invoke-direct {p0, p0}, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->setGoogleDriveConnectionSettingListener(Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$GoogleDriveConnectionSettingListener;)V

    .line 101
    invoke-direct {p0}, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->initLoader()V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance p1, Lcom/sonyericsson/music/settings/GoogleDriveSettingsLoader;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/settings/GoogleDriveSettingsLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->setGoogleDriveConnectionSettingListener(Lcom/sonyericsson/music/dialogs/GoogleDriveConnectionSettingsDialog$GoogleDriveConnectionSettingListener;)V

    .line 139
    invoke-direct {p0}, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->destroyLoader()V

    .line 140
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onGoogleDriveConnectionSet()V
    .locals 3

    .line 308
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 192
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "download_connection"

    .line 194
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 193
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mPreferredDownloadConnectionSetting:I

    const-string p1, "is_signed_in"

    .line 197
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 196
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->msIsSignedIn:Z

    const-string p1, "account_name"

    .line 200
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 199
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mAccountName:Ljava/lang/String;

    .line 202
    iget p1, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mPreferredDownloadConnectionSetting:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->updateGoogleDriveConnectionSetting(I)V

    .line 204
    iget-boolean p1, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->msIsSignedIn:Z

    iget-object p2, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mAccountName:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->updateGoogleDriveSignInSignOutSetting(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 173
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 177
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 118
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveConnection:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveSignInSignOut:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 106
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveConnection:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mGoogleDriveSignInSignOut:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 130
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "is_signed_in"

    .line 132
    iget-boolean v1, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->msIsSignedIn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "account_name"

    .line 133
    iget-object v1, p0, Lcom/sonyericsson/music/settings/GoogleDriveSettingsActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected provideTheme()Lcom/sonyericsson/music/ThemedActivity$Theme;
    .locals 1

    .line 182
    sget-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->SETTINGS:Lcom/sonyericsson/music/ThemedActivity$Theme;

    return-object v0
.end method
