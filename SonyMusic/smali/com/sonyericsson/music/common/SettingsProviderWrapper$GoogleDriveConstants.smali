.class public final Lcom/sonyericsson/music/common/SettingsProviderWrapper$GoogleDriveConstants;
.super Ljava/lang/Object;
.source "SettingsProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/SettingsProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GoogleDriveConstants"
.end annotation


# static fields
.field public static final KEY_PREF_NBR_DOWNLOADS:Ljava/lang/String; = "pref_key_nbr_downloads"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_PREF_NBR_FILES:Ljava/lang/String; = "pref_key_nbr_files"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_PREF_NBR_LOCAL_PLAYS:Ljava/lang/String; = "pref_key_nbr_local_plays"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_PREF_NBR_REMOTE_PLAYS:Ljava/lang/String; = "pref_key_nbr_remote_plays"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_PREF_STATUS:Ljava/lang/String; = "pref_key_status"

.field public static final STATUS_CONNECTED:Ljava/lang/String; = "connected"

.field public static final STATUS_DEFAULT:Ljava/lang/String; = "default"

.field public static final STATUS_DISCONNECTED:Ljava/lang/String; = "disconnected"

.field public static final STATUS_UNAVAILABLE:Ljava/lang/String; = "unavailable"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    .locals 10

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne p2, v4, :cond_0

    const-string v5, "name=? OR name=? OR name=? OR name=?"

    .line 181
    new-array v6, v0, [Ljava/lang/String;

    const-string v7, "pref_key_nbr_files"

    aput-object v7, v6, v2

    const-string v7, "pref_key_nbr_downloads"

    aput-object v7, v6, v1

    const-string v7, "pref_key_nbr_remote_plays"

    aput-object v7, v6, v4

    const-string v7, "pref_key_nbr_local_plays"

    aput-object v7, v6, v3

    .line 184
    invoke-virtual {p0, p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v5, "name=? AND value=?"

    .line 188
    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "pref_key_status"

    aput-object v7, v6, v2

    const-string v7, "connected"

    aput-object v7, v6, v1

    .line 189
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "value"

    const-string v9, "disconnected"

    .line 190
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, p1, v7, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    if-ne p2, v3, :cond_1

    const-string p2, "name=? OR name=? OR name=? OR name=?"

    .line 197
    new-array v0, v0, [Ljava/lang/String;

    const-string v5, "pref_key_nbr_files"

    aput-object v5, v0, v2

    const-string v2, "pref_key_nbr_downloads"

    aput-object v2, v0, v1

    const-string v1, "pref_key_nbr_remote_plays"

    aput-object v1, v0, v4

    const-string v1, "pref_key_nbr_local_plays"

    aput-object v1, v0, v3

    .line 200
    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    return-void
.end method
