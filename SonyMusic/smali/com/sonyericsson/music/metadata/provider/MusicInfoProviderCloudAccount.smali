.class final Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;
.super Ljava/lang/Object;
.source "MusicInfoProviderCloudAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 117
    invoke-static {p1, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->encryptWhereArgs(Ljava/lang/String;[Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;

    move-result-object p1

    const-string p2, "cloud_account"

    .line 118
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;->getClause()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;->getArgs()[Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-virtual {p0, p2, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static encryptContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 4

    if-eqz p0, :cond_1

    .line 162
    new-instance v0, Landroid/content/ContentValues;

    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 163
    invoke-virtual {v0, p0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 165
    sget-object p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudAccounts;->ENCRYPTED_COLUMNS:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    invoke-static {}, Lcom/sonyericsson/music/common/EncryptionUtils;->getInstance()Lcom/sonyericsson/music/common/EncryptionUtils;

    move-result-object v2

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-virtual {v2, v3}, Lcom/sonyericsson/music/common/EncryptionUtils;->encryptIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method private static encryptWhereArgs(Ljava/lang/String;[Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;
    .locals 5

    .line 177
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 181
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;->getClause()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\s*=\\s*\\?\\s*(AND|OR)?\\s*"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 182
    array-length p1, p0

    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;->getArgs()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 183
    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_2

    .line 184
    aget-object v1, p0, p1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 185
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudAccounts;->ENCRYPTED_COLUMNS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 186
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    invoke-static {}, Lcom/sonyericsson/music/common/EncryptionUtils;->getInstance()Lcom/sonyericsson/music/common/EncryptionUtils;

    move-result-object v3

    .line 188
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;->getArg(I)Ljava/lang/String;

    move-result-object v4

    .line 187
    invoke-virtual {v3, v4}, Lcom/sonyericsson/music/common/EncryptionUtils;->encryptIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-virtual {v0, p1, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;->setArg(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static getAccountNameAndServiceType(ILandroid/database/sqlite/SQLiteDatabase;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v2, "_id = ?"

    const/4 v0, 0x1

    .line 199
    new-array v3, v0, [Ljava/lang/String;

    .line 201
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, v3, v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 199
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 203
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "service_id"

    .line 205
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 204
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const-string v0, "name"

    .line 207
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 206
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 213
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 215
    :cond_1
    throw p1

    :cond_2
    if-eqz p0, :cond_3

    .line 213
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method static insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2

    if-eqz p1, :cond_0

    .line 94
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->encryptContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p1

    const-string v0, "cloud_account"

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    return-wide p0
.end method

.method static query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 37
    invoke-static {p2, p3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->encryptWhereArgs(Ljava/lang/String;[Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;

    move-result-object p2

    const-string v1, "cloud_account"

    .line 39
    invoke-virtual {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;->getClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;->getArgs()[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p4

    move-object v7, p5

    .line 38
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 43
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    .line 44
    new-instance p2, Landroid/database/MatrixCursor;

    invoke-direct {p2, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 46
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 48
    :cond_0
    array-length p3, p1

    .line 49
    new-array p4, p3, [Ljava/lang/Object;

    const/4 p5, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    .line 51
    aget-object v1, p1, v0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 52
    aget-object v2, p1, v0

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "last_sync_date"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_2

    :sswitch_1
    const-string v4, "state"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_2

    :sswitch_2
    const-string v4, "name"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto :goto_2

    :sswitch_3
    const-string v4, "_id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_4
    const-string v4, "_count"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_5
    const-string v4, "service_id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_6
    const-string v4, "sync_state"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    goto :goto_3

    .line 66
    :pswitch_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudAccounts;->ENCRYPTED_COLUMNS:Ljava/util/List;

    aget-object v3, p1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    invoke-static {}, Lcom/sonyericsson/music/common/EncryptionUtils;->getInstance()Lcom/sonyericsson/music/common/EncryptionUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/music/common/EncryptionUtils;->decryptIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    :cond_2
    aput-object v1, p4, v0

    goto :goto_3

    .line 62
    :pswitch_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p4, v0

    goto :goto_3

    .line 58
    :pswitch_2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p4, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 81
    :cond_3
    invoke-virtual {p2, p4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 82
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    .line 85
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 86
    throw p1

    :cond_5
    const/4 p2, 0x0

    :goto_4
    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e385e13 -> :sswitch_6
        -0x66cdcd1b -> :sswitch_5
        -0x583c4bf0 -> :sswitch_4
        0x171ba -> :sswitch_3
        0x337a8b -> :sswitch_2
        0x68ac491 -> :sswitch_1
        0x5a58c069 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .line 105
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->encryptContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v2

    .line 106
    invoke-static {p2, p3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->encryptWhereArgs(Ljava/lang/String;[Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;

    move-result-object p1

    const-string v1, "cloud_account"

    .line 108
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;->getClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;->getArgs()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    move-object v0, p0

    .line 107
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static validateArguments(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 123
    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    return v0

    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    .line 131
    array-length v1, p1

    if-lez v1, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x1

    if-nez p0, :cond_4

    if-eqz p1, :cond_3

    .line 139
    array-length v2, p1

    if-nez v2, :cond_4

    :cond_3
    return v1

    :cond_4
    if-eqz p0, :cond_5

    .line 144
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_7

    const-string v5, "="

    .line 146
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v4, v4, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 151
    :cond_7
    array-length p0, p1

    if-ne v4, p0, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method
