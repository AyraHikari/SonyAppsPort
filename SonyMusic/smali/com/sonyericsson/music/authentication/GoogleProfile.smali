.class public Lcom/sonyericsson/music/authentication/GoogleProfile;
.super Ljava/lang/Object;
.source "GoogleProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/authentication/GoogleProfile$GoogleDriveEncrypter;,
        Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;
    }
.end annotation


# static fields
.field private static final ENCRYPTED_KEYS:[Ljava/lang/String;

.field private static final sGooleDriveEncrypter:Lcom/sonyericsson/music/authentication/GoogleProfile$GoogleDriveEncrypter;


# instance fields
.field private final mAccountName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 25
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_key_google_profile_account_name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/authentication/GoogleProfile;->ENCRYPTED_KEYS:[Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/sonyericsson/music/authentication/GoogleProfile$GoogleDriveEncrypter;

    sget-object v1, Lcom/sonyericsson/music/authentication/GoogleProfile;->ENCRYPTED_KEYS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/authentication/GoogleProfile$GoogleDriveEncrypter;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/music/authentication/GoogleProfile;->sGooleDriveEncrypter:Lcom/sonyericsson/music/authentication/GoogleProfile$GoogleDriveEncrypter;

    return-void
.end method

.method constructor <init>(Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iget-object p1, p1, Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;->mAccountName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sonyericsson/music/authentication/GoogleProfile;->mAccountName:Ljava/lang/String;

    return-void
.end method

.method static clear(Landroid/content/Context;)V
    .locals 1

    .line 51
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    const-string v0, "pref_key_google_profile_account_name"

    .line 53
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->remove(Landroid/content/Context;Ljava/lang/String;)I

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/sonyericsson/music/authentication/GoogleProfile;
    .locals 5

    .line 39
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 41
    sget-object v0, Lcom/sonyericsson/music/authentication/GoogleProfile;->sGooleDriveEncrypter:Lcom/sonyericsson/music/authentication/GoogleProfile$GoogleDriveEncrypter;

    const-string v1, "pref_key_google_profile_account_name"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 42
    invoke-static {p0, v0, v1, v2}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->get(Landroid/content/Context;Lcom/sonyericsson/music/common/SettingsProviderWrapper$Encrypter;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 44
    new-instance v0, Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;-><init>()V

    .line 45
    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;->accountName(Ljava/lang/String;)Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;->build()Lcom/sonyericsson/music/authentication/GoogleProfile;

    move-result-object p0

    return-object p0
.end method

.method static save(Landroid/content/Context;Lcom/sonyericsson/music/authentication/GoogleProfile;)V
    .locals 2

    .line 57
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 59
    sget-object v0, Lcom/sonyericsson/music/authentication/GoogleProfile;->sGooleDriveEncrypter:Lcom/sonyericsson/music/authentication/GoogleProfile$GoogleDriveEncrypter;

    const-string v1, "pref_key_google_profile_account_name"

    .line 60
    invoke-virtual {p1}, Lcom/sonyericsson/music/authentication/GoogleProfile;->getAccountName()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {p0, v0, v1, p1}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->set(Landroid/content/Context;Lcom/sonyericsson/music/common/SettingsProviderWrapper$Encrypter;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public buildUpon()Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;
    .locals 2

    .line 72
    new-instance v0, Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/music/authentication/GoogleProfile;->mAccountName:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;->accountName(Ljava/lang/String;)Lcom/sonyericsson/music/authentication/GoogleProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleProfile;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public isSignedIn()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleProfile;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
