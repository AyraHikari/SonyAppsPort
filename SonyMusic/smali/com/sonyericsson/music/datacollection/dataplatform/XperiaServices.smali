.class public Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices;
.super Ljava/lang/Object;
.source "XperiaServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;
    }
.end annotation


# static fields
.field private static sXperiaIDs:Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getIds(Landroid/content/Context;)Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;
    .locals 10

    const-class v0, Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices;

    monitor-enter v0

    .line 25
    :try_start_0
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 27
    sget-object v1, Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices;->sXperiaIDs:Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;

    if-eqz v1, :cond_0

    .line 28
    sget-object p0, Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices;->sXperiaIDs:Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string v1, ""

    const-string v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    .line 36
    :try_start_2
    sget-object v5, Lcom/sonymobile/xperiaservices/ServicePromotion$XperiaServicesId;->CONTENT_URI:Landroid/net/Uri;

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 38
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "xs_android_id"

    .line 39
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const-string v4, "xs_guid"

    .line 40
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 42
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, p0

    :cond_1
    if-eqz v3, :cond_3

    .line 58
    :goto_0
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 60
    :cond_2
    throw p0

    :catch_0
    nop

    if-eqz v3, :cond_3

    goto :goto_0

    .line 62
    :cond_3
    :goto_1
    new-instance p0, Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices;->sXperiaIDs:Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;

    .line 63
    sget-object p0, Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices;->sXperiaIDs:Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    return-void
.end method
