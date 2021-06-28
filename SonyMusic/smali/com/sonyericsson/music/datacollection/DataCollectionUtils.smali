.class public final Lcom/sonyericsson/music/datacollection/DataCollectionUtils;
.super Ljava/lang/Object;
.source "DataCollectionUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCustomDimensionMimeTypesString(ILjava/util/TreeMap;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/DataCollectionUtils;->getLocalTracksCountBucket(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "total:"

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 126
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/sonyericsson/music/datacollection/DataCollectionUtils;->getMimeTypesCountBucket(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHdTracksCountBucket(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "0"

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-gt p0, v0, :cond_1

    const-string p0, "5"

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    if-gt p0, v0, :cond_2

    const-string p0, "10"

    goto :goto_0

    :cond_2
    const/16 v0, 0x19

    if-gt p0, v0, :cond_3

    const-string p0, "25"

    goto :goto_0

    :cond_3
    const/16 v0, 0x32

    if-gt p0, v0, :cond_4

    const-string p0, "50"

    goto :goto_0

    :cond_4
    const/16 v0, 0x64

    if-gt p0, v0, :cond_5

    const-string p0, "100"

    goto :goto_0

    :cond_5
    const/16 v0, 0xfa

    if-gt p0, v0, :cond_6

    const-string p0, "250"

    goto :goto_0

    :cond_6
    const/16 v0, 0x1f4

    if-gt p0, v0, :cond_7

    const-string p0, "500"

    goto :goto_0

    :cond_7
    const/16 v0, 0x3e8

    if-gt p0, v0, :cond_8

    const-string p0, "1000"

    goto :goto_0

    :cond_8
    const-string p0, ">1000"

    :goto_0
    return-object p0
.end method

.method public static getLibraryCountBucket(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "0"

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x3

    if-gt p0, v0, :cond_1

    const-string p0, "3"

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x5

    if-gt p0, v0, :cond_2

    const-string p0, "5"

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x8

    if-gt p0, v0, :cond_3

    const-string p0, "8"

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0xa

    if-gt p0, v0, :cond_4

    const-string p0, "10"

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0xf

    if-gt p0, v0, :cond_5

    const-string p0, "15"

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x14

    if-gt p0, v0, :cond_6

    const-string p0, "20"

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x19

    if-gt p0, v0, :cond_7

    const-string p0, "25"

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x1e

    if-gt p0, v0, :cond_8

    const-string p0, "30"

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x28

    if-gt p0, v0, :cond_9

    const-string p0, "40"

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x32

    if-gt p0, v0, :cond_a

    const-string p0, "50"

    goto :goto_0

    :cond_a
    const/16 v0, 0x3c

    if-gt p0, v0, :cond_b

    const-string p0, "60"

    goto :goto_0

    :cond_b
    const/16 v0, 0x50

    if-gt p0, v0, :cond_c

    const-string p0, "80"

    goto :goto_0

    :cond_c
    const/16 v0, 0x64

    if-gt p0, v0, :cond_d

    const-string p0, "100"

    goto :goto_0

    :cond_d
    const/16 v0, 0x96

    if-gt p0, v0, :cond_e

    const-string p0, "150"

    goto :goto_0

    :cond_e
    const/16 v0, 0xc8

    if-gt p0, v0, :cond_f

    const-string p0, "200"

    goto :goto_0

    :cond_f
    const/16 v0, 0xfa

    if-gt p0, v0, :cond_10

    const-string p0, "250"

    goto :goto_0

    :cond_10
    const/16 v0, 0x12c

    if-gt p0, v0, :cond_11

    const-string p0, "300"

    goto :goto_0

    :cond_11
    const/16 v0, 0x190

    if-gt p0, v0, :cond_12

    const-string p0, "400"

    goto :goto_0

    :cond_12
    const/16 v0, 0x1f4

    if-gt p0, v0, :cond_13

    const-string p0, "500"

    goto :goto_0

    :cond_13
    const/16 v0, 0x258

    if-gt p0, v0, :cond_14

    const-string p0, "600"

    goto :goto_0

    :cond_14
    const/16 v0, 0x320

    if-gt p0, v0, :cond_15

    const-string p0, "800"

    goto :goto_0

    :cond_15
    const/16 v0, 0x3e8

    if-gt p0, v0, :cond_16

    const-string p0, "1000"

    goto :goto_0

    :cond_16
    const-string p0, ">1000"

    :goto_0
    return-object p0
.end method

.method public static getLocalTracksCountBucket(I)Ljava/lang/String;
    .locals 1

    if-gez p0, :cond_0

    const-string p0, "-1"

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "0"

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    if-gt p0, v0, :cond_2

    const-string p0, "10"

    goto :goto_0

    :cond_2
    const/16 v0, 0x32

    if-gt p0, v0, :cond_3

    const-string p0, "50"

    goto :goto_0

    :cond_3
    const/16 v0, 0x64

    if-gt p0, v0, :cond_4

    const-string p0, "100"

    goto :goto_0

    :cond_4
    const/16 v0, 0x1f4

    if-gt p0, v0, :cond_5

    const-string p0, "500"

    goto :goto_0

    :cond_5
    const/16 v0, 0x3e8

    if-gt p0, v0, :cond_6

    const-string p0, "1000"

    goto :goto_0

    :cond_6
    const/16 v0, 0x1388

    if-gt p0, v0, :cond_7

    const-string p0, "5000"

    goto :goto_0

    :cond_7
    const/16 v0, 0x2710

    if-gt p0, v0, :cond_8

    const-string p0, "10000"

    goto :goto_0

    :cond_8
    const v0, 0xc350

    if-gt p0, v0, :cond_9

    const-string p0, "50000"

    goto :goto_0

    :cond_9
    const-string p0, ">50000"

    :goto_0
    return-object p0
.end method

.method private static getMimeTypesCountBucket(I)Ljava/lang/String;
    .locals 1

    if-gtz p0, :cond_0

    const-string p0, "0"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "1"

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-gt p0, v0, :cond_2

    const-string p0, "5"

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    if-gt p0, v0, :cond_3

    const-string p0, "10"

    goto :goto_0

    :cond_3
    const/16 v0, 0x19

    if-gt p0, v0, :cond_4

    const-string p0, "25"

    goto :goto_0

    :cond_4
    const/16 v0, 0x32

    if-gt p0, v0, :cond_5

    const-string p0, "50"

    goto :goto_0

    :cond_5
    const/16 v0, 0x64

    if-gt p0, v0, :cond_6

    const-string p0, "100"

    goto :goto_0

    :cond_6
    const/16 v0, 0xc8

    if-gt p0, v0, :cond_7

    const-string p0, "200"

    goto :goto_0

    :cond_7
    const/16 v0, 0x1f4

    if-gt p0, v0, :cond_8

    const-string p0, "500"

    goto :goto_0

    :cond_8
    const/16 v0, 0x3e8

    if-gt p0, v0, :cond_9

    const-string p0, "1000"

    goto :goto_0

    :cond_9
    const/16 v0, 0x9c4

    if-gt p0, v0, :cond_a

    const-string p0, "2500"

    goto :goto_0

    :cond_a
    const/16 v0, 0x1388

    if-gt p0, v0, :cond_b

    const-string p0, "5000"

    goto :goto_0

    :cond_b
    const/16 v0, 0x2710

    if-gt p0, v0, :cond_c

    const-string p0, "10000"

    goto :goto_0

    :cond_c
    const-string p0, ">10000"

    :goto_0
    return-object p0
.end method

.method public static getNumberOfLocalTracksAndMimeTypes(Landroid/content/Context;)Lcom/sonyericsson/music/datacollection/TracksCountAndMimeTypes;
    .locals 10

    .line 70
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const/4 v1, 0x2

    .line 72
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "mime_type"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v2, v1, v6, v5}, Lcom/sonyericsson/music/common/DBUtils;->getAllTracksCursor(Landroid/content/ContentResolver;[Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 79
    :try_start_0
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    sget-object v7, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    .line 80
    invoke-static {p0, v2, v7}, Lcom/sonyericsson/music/common/HDAudioUtils;->getHDContent(Landroid/content/Context;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;)Ljava/util/HashSet;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    .line 84
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const-string v7, "mime_type"

    .line 86
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 90
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 91
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 93
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 95
    invoke-virtual {v0, v8}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 96
    invoke-virtual {v0, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    add-int/2addr v9, v4

    .line 98
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 103
    throw p0

    :cond_3
    const/4 p0, 0x0

    const/4 v2, -0x1

    :goto_2
    if-le v2, v6, :cond_4

    .line 106
    invoke-static {v2, v0}, Lcom/sonyericsson/music/datacollection/DataCollectionUtils;->createCustomDimensionMimeTypesString(ILjava/util/TreeMap;)Ljava/lang/String;

    move-result-object v5

    .line 109
    :cond_4
    new-instance v0, Lcom/sonyericsson/music/datacollection/TracksCountAndMimeTypes;

    invoke-direct {v0, v2, p0, v5}, Lcom/sonyericsson/music/datacollection/TracksCountAndMimeTypes;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static getPersonalDataCollectionSettingValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isPersonalDataCollectionConsented(Landroid/content/Context;)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "not set"

    return-object p0

    :pswitch_0
    const-string p0, "enabled"

    return-object p0

    :pswitch_1
    const-string p0, "disabled"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isPersonalDataCollectionAllowedByUser(Landroid/content/Context;)Z
    .locals 1

    .line 32
    invoke-static {p0}, Lcom/sonymobile/music/common/ProcessUtils;->isRunningInServiceProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->isPersonalDataCollectionConsented(Landroid/content/Context;)Z

    move-result p0

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isPersonalDataCollectionConsented(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static percentBucket(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    const-string p0, "0"

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    if-gt p0, v0, :cond_1

    const-string p0, "5"

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    if-gt p0, v0, :cond_2

    const-string p0, "10"

    goto :goto_0

    :cond_2
    const/16 v0, 0x11

    if-gt p0, v0, :cond_3

    const-string p0, "15"

    goto :goto_0

    :cond_3
    const/16 v0, 0x18

    if-gt p0, v0, :cond_4

    const-string p0, "20"

    goto :goto_0

    :cond_4
    const/16 v0, 0x22

    if-gt p0, v0, :cond_5

    const-string p0, "30"

    goto :goto_0

    :cond_5
    const/16 v0, 0x2c

    if-gt p0, v0, :cond_6

    const-string p0, "40"

    goto :goto_0

    :cond_6
    const/16 v0, 0x36

    if-gt p0, v0, :cond_7

    const-string p0, "50"

    goto :goto_0

    :cond_7
    const/16 v0, 0x40

    if-gt p0, v0, :cond_8

    const-string p0, "60"

    goto :goto_0

    :cond_8
    const/16 v0, 0x4a

    if-gt p0, v0, :cond_9

    const-string p0, "70"

    goto :goto_0

    :cond_9
    const/16 v0, 0x54

    if-gt p0, v0, :cond_a

    const-string p0, "80"

    goto :goto_0

    :cond_a
    const/16 v0, 0x5e

    if-gt p0, v0, :cond_b

    const-string p0, "90"

    goto :goto_0

    :cond_b
    const-string p0, "100"

    :goto_0
    return-object p0
.end method
