.class public final Lcom/sonyericsson/music/common/SettingsProviderWrapper$GoogleProfileConstants;
.super Ljava/lang/Object;
.source "SettingsProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/SettingsProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GoogleProfileConstants"
.end annotation


# static fields
.field public static final KEY_PREF_ACCOUNT_NAME:Ljava/lang/String; = "pref_key_google_profile_account_name"

.field public static final KEY_PREF_DISPLAY_NAME:Ljava/lang/String; = "pref_key_google_profile_display_name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_PREF_PICTURE_URL:Ljava/lang/String; = "pref_key_google_profile_picture_url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    const-string p2, "name=? OR name=?"

    const/4 v0, 0x2

    .line 219
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_key_google_profile_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_key_google_profile_picture_url"

    aput-object v2, v0, v1

    .line 221
    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method
