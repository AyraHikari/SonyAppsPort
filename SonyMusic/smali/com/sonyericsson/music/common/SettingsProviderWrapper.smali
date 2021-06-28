.class public Lcom/sonyericsson/music/common/SettingsProviderWrapper;
.super Ljava/lang/Object;
.source "SettingsProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/SettingsProviderWrapper$TrackIdConstants;,
        Lcom/sonyericsson/music/common/SettingsProviderWrapper$GoogleProfileConstants;,
        Lcom/sonyericsson/music/common/SettingsProviderWrapper$GoogleDriveConstants;,
        Lcom/sonyericsson/music/common/SettingsProviderWrapper$PlaylistSortConstants;,
        Lcom/sonyericsson/music/common/SettingsProviderWrapper$Encrypter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decryptValueIfNeeded(Lcom/sonyericsson/music/common/SettingsProviderWrapper$Encrypter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 93
    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/music/common/SettingsProviderWrapper$Encrypter;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private static encryptValueIfNeeded(Lcom/sonyericsson/music/common/SettingsProviderWrapper$Encrypter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 53
    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/music/common/SettingsProviderWrapper$Encrypter;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 7

    .line 97
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    const/4 v0, 0x0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 103
    invoke-static {p1}, Lcom/sonyericsson/music/common/SettingsStore$Preferences;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "value"

    .line 106
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 110
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return p2

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_2
    throw p0
.end method

.method public static varargs get(Landroid/content/Context;Lcom/sonyericsson/music/common/SettingsProviderWrapper$Encrypter;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 70
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 71
    array-length v0, p3

    const/4 v1, 0x1

    if-gt v0, v1, :cond_4

    .line 75
    array-length v0, p3

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p3, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object p3, p3, v0

    .line 77
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 78
    invoke-static {p2}, Lcom/sonyericsson/music/common/SettingsStore$Preferences;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 80
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "value"

    .line 82
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 81
    invoke-static {p1, p2, p0}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->decryptValueIfNeeded(Lcom/sonyericsson/music/common/SettingsProviderWrapper$Encrypter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    .line 86
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p3

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_3
    throw p0

    .line 72
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only one default argument is allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs get(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->get(Landroid/content/Context;Lcom/sonyericsson/music/common/SettingsProviderWrapper$Encrypter;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    .locals 0

    .line 125
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/music/common/SettingsProviderWrapper$PlaylistSortConstants;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    .line 126
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/music/common/SettingsProviderWrapper$GoogleDriveConstants;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    .line 127
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/music/common/SettingsProviderWrapper$GoogleProfileConstants;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    .line 128
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/music/common/SettingsProviderWrapper$TrackIdConstants;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    return-void
.end method

.method public static remove(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 117
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    const-string v0, "name = ?"

    const/4 v1, 0x1

    .line 119
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lcom/sonyericsson/music/common/SettingsStore$Preferences;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static set(Landroid/content/Context;Lcom/sonyericsson/music/common/SettingsProviderWrapper$Encrypter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 43
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 44
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    .line 45
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "value"

    .line 46
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->encryptValueIfNeeded(Lcom/sonyericsson/music/common/SettingsProviderWrapper$Encrypter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 49
    invoke-static {}, Lcom/sonyericsson/music/common/SettingsStore$Preferences;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static set(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2

    .line 57
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 58
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    .line 59
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 62
    invoke-static {}, Lcom/sonyericsson/music/common/SettingsStore$Preferences;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static set(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->set(Landroid/content/Context;Lcom/sonyericsson/music/common/SettingsProviderWrapper$Encrypter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
