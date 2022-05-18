.class public final Lcom/sonyericsson/music/common/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# static fields
.field private static final MIME_AUDIO_WILDCARD:Ljava/lang/String; = "audio/*"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/sonyericsson/music/common/Sender;->mContext:Landroid/content/Context;

    .line 40
    iput-object p1, p0, Lcom/sonyericsson/music/common/Sender;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static sendArtistTracks(Lcom/sonyericsson/music/MusicActivity;J)V
    .locals 3

    if-eqz p0, :cond_0

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 151
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 154
    new-instance v1, Lcom/sonyericsson/music/common/Sender$1;

    invoke-direct {v1, v0, p1, p2}, Lcom/sonyericsson/music/common/Sender$1;-><init>(Landroid/content/Context;J)V

    .line 171
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/MusicActivity;->doAsync(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static sendFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 3

    .line 111
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 118
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    new-instance p1, Lcom/sonyericsson/music/common/SendRunnable;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/music/common/SendRunnable;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 125
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 126
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method private sendMultiple(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "audio/*"

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    .line 91
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 93
    :try_start_0
    iget-object p1, p0, Lcom/sonyericsson/music/common/Sender;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10020f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/music/common/Sender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private sendOne(Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/music/common/Sender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    .line 70
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 72
    :try_start_0
    iget-object p1, p0, Lcom/sonyericsson/music/common/Sender;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10020f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/music/common/Sender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static sendSingleFile(Landroid/content/Context;J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 137
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance p1, Lcom/sonyericsson/music/common/SendRunnable;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/music/common/SendRunnable;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 145
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 146
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public send(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/common/Sender;->sendOne(Landroid/net/Uri;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 53
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/common/Sender;->sendMultiple(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method
