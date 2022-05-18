.class public Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;
.super Lcom/sonyericsson/music/ThemedActivity;
.source "PersonalDataCollectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity$OpenPersonalDataCollectionDialogTask;
    }
.end annotation


# static fields
.field private static final ENTRANCE_PROTOCOL:Ljava/lang/String; = "entrance://"

.field private static final PERSONAL_DATA_URI:Ljava/lang/String; = "personaldata"

.field public static final TITLE_RES_ID:Ljava/lang/String; = "title"


# instance fields
.field private mFinePrint:Landroid/widget/TextView;

.field private mHasServiceBinder:Z

.field private mHeaderImage:Landroid/widget/ImageView;

.field private mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

.field private mNegative:Landroid/widget/Button;

.field private mPositive:Landroid/widget/Button;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/sonyericsson/music/ThemedActivity;-><init>()V

    return-void
.end method

.method private createClickableText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8

    .line 183
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 184
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    .line 185
    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 187
    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    const-string v5, "entrance://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    new-instance v4, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity$1;

    invoke-direct {v4, p0, v3}, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity$1;-><init>(Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;Landroid/text/style/URLSpan;)V

    .line 197
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 198
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 199
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    .line 200
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 201
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private enableButtons()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 178
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mPositive:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mNegative:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    .line 137
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setPersonalDataCollectionCardDismissed(Landroid/content/Context;Z)V

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 142
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    .line 144
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/music/dialogs/ChinaTypeApprovalDialog;->showCtaAcceptanceDialog(Landroidx/appcompat/app/AppCompatActivity;Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;Z)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    .line 147
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->setConsent(Z)V

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 153
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->setConsent(Z)V

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f09005c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Lcom/sonyericsson/music/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->setDefaultLightSystemUI(Landroid/app/Activity;)V

    const p1, 0x7f0c0097

    .line 69
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0900c9

    .line 71
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mHeaderImage:Landroid/widget/ImageView;

    const p1, 0x7f090217

    .line 72
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mTitleText:Landroid/widget/TextView;

    const p1, 0x7f0900bf

    .line 73
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mFinePrint:Landroid/widget/TextView;

    const p1, 0x7f09005d

    .line 74
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mPositive:Landroid/widget/Button;

    const p1, 0x7f09005c

    .line 75
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mNegative:Landroid/widget/Button;

    .line 76
    iget-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mPositive:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mNegative:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mPositive:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    .line 79
    invoke-direct {p0}, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->enableButtons()V

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "title"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "title"

    const v1, 0x7f1001b9

    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const/4 p1, 0x0

    .line 88
    invoke-static {p0, p0, p1}, Lcom/sonyericsson/music/common/MusicUtils;->startAndBindMediaPlaybackService(Landroid/content/Context;Landroid/content/ServiceConnection;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mHasServiceBinder:Z

    .line 90
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->isPhoneLandscape(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mHeaderImage:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 114
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 116
    iget-boolean v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mHasServiceBinder:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mHasServiceBinder:Z

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mPositive:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mNegative:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 127
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 131
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPostResume()V
    .locals 3

    .line 99
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPostResume()V

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mFinePrint:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mFinePrint:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sonyericsson/music/common/ThemeColor;->primaryText(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mFinePrint:Landroid/widget/TextView;

    .line 106
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 107
    invoke-static {}, Lcom/sonyericsson/music/common/MusicUtils;->isUsVariant()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f100255

    goto :goto_0

    :cond_0
    const v2, 0x7f100254

    .line 106
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 105
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->createClickableText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 219
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 221
    sget-object p2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const-class v0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in onServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-virtual {p2, v0, p1}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    .line 225
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->enableButtons()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 235
    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    .line 237
    invoke-direct {p0}, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->enableButtons()V

    return-void
.end method

.method protected provideTheme()Lcom/sonyericsson/music/ThemedActivity$Theme;
    .locals 1

    .line 242
    sget-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->SETTINGS_FULLSCREEN_DIALOG:Lcom/sonyericsson/music/ThemedActivity$Theme;

    return-object v0
.end method

.method public setConsent(Z)V
    .locals 1

    .line 164
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setPersonalDataCollectionConsented(Landroid/content/Context;I)V

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v0, :cond_0

    .line 169
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setPersonalDataCollectionConsented(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
