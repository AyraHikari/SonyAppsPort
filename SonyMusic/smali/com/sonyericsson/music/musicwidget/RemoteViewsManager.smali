.class public Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;
.super Ljava/lang/Object;
.source "RemoteViewsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;
    }
.end annotation


# instance fields
.field private final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mContext:Landroid/content/Context;

.field private final mThisWidget:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/sonyericsson/music/musicwidget/MusicWidgetProvider;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->mThisWidget:Landroid/content/ComponentName;

    .line 49
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .locals 0

    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->setOnClickPendingActivityIntentSafe(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/widget/RemoteViews;II)V
    .locals 0

    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->setOnClickPendingServiceIntentSafe(Landroid/content/Context;Landroid/widget/RemoteViews;II)V

    return-void
.end method

.method private static setOnClickPendingActivityIntentSafe(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x10000000

    .line 126
    :try_start_0
    invoke-static {p0, v0, p3, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 128
    invoke-virtual {p1, p2, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    sget-object p0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const-class p1, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Got an "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p3, Ljava/lang/SecurityException;

    .line 135
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " when setting up an pending intent. This could be related to that the widget is running on a mulituser platform."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/music/debug/DebugBase;->logW(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static setOnClickPendingServiceIntentSafe(Landroid/content/Context;Landroid/widget/RemoteViews;II)V
    .locals 0

    .line 146
    :try_start_0
    invoke-static {p0, p3, p3}, Lcom/sonyericsson/music/proxyservice/MediaButtonReceiver;->createInternalMediaButtonPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p0

    .line 147
    invoke-virtual {p1, p2, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    sget-object p0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const-class p1, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Got an "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p3, Ljava/lang/SecurityException;

    .line 154
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " when setting up an pending intent. This could be related to that the widget is running on a mulituser platform."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/music/debug/DebugBase;->logW(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public hasWidgets()Z
    .locals 3

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->isUpdateAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->mThisWidget:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method isUpdateAllowed()Z
    .locals 3

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 58
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 60
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public partiallyUpdateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->isUpdateAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->mThisWidget:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v0, p1}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V

    :cond_0
    return-void
.end method

.method public populateAllViews(Landroid/widget/RemoteViews;)V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->isUpdateAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->mThisWidget:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    :cond_0
    return-void
.end method

.method public setAlbumArt(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->isUpdateAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    iget-object v1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->setAlbumArt(Landroid/graphics/Bitmap;)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->partiallyUpdateAppWidget(Landroid/widget/RemoteViews;)V

    :cond_0
    return-void
.end method

.method public setBufferingSpinnerState(Z)V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->isUpdateAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    iget-object v1, p0, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->setBufferingSpinnerState(Z)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->partiallyUpdateAppWidget(Landroid/widget/RemoteViews;)V

    :cond_0
    return-void
.end method
