.class public Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;
.super Ljava/lang/Object;
.source "PreferenceHelper.java"


# static fields
.field private static ALBUM_KEY:Ljava/lang/String; = "album_theme"

.field private static ALBUM_PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.album"

.field private static DARK_VALUE:Ljava/lang/String; = "dark"

.field private static LIGHT_VALUE:Ljava/lang/String; = "light"

.field private static MUSIC_KEY:Ljava/lang/String; = "pref_key_theme"

.field private static MUSIC_PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.music"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getApplicationPreference()Landroid/content/SharedPreferences;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;->mPreferences:Landroid/content/SharedPreferences;

    .line 31
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getIconResourceId()I
    .locals 3

    .line 47
    invoke-virtual {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;->getKeyValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;->LIGHT_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    sget v0, Lcom/sonymobile/somcmediarouter/R$drawable;->ic_dlna_grey:I

    return v0

    .line 57
    :cond_0
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;->DARK_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    sget v0, Lcom/sonymobile/somcmediarouter/R$drawable;->ic_dlna_white:I

    return v0

    .line 62
    :cond_1
    sget v0, Lcom/sonymobile/somcmediarouter/R$drawable;->ic_dlna_grey:I

    return v0
.end method

.method public getKeyValue()Ljava/lang/String;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;->ALBUM_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;->ALBUM_KEY:Ljava/lang/String;

    return-object v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;->MUSIC_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;->MUSIC_KEY:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
