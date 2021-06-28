.class public Lcom/sonyericsson/music/infinite/PluginInfo;
.super Ljava/lang/Object;
.source "PluginInfo.java"


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDescription:Ljava/lang/String;

.field private mIcon:Landroid/graphics/Bitmap;

.field private final mIsSearchForMoreItem:Z

.field private mLabel:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mPackageName:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mClassName:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mIsSearchForMoreItem:Z

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 94
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mLabel:Ljava/lang/String;

    .line 95
    iget-object p2, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mLabel:Ljava/lang/String;

    iput-object p2, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mDescription:Ljava/lang/String;

    .line 97
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070138

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 99
    invoke-static {p1, p3, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mPackageName:Ljava/lang/String;

    .line 55
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mClassName:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mIsSearchForMoreItem:Z

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p1

    .line 61
    iget v0, p2, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-eqz v0, :cond_0

    .line 62
    iget v0, p2, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mLabel:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mLabel:Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mLabel:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mLabel:Ljava/lang/String;

    .line 71
    :cond_3
    :goto_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070138

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 73
    iget v1, p2, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v1, :cond_4

    .line 74
    iget p2, p2, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 75
    :cond_4
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v1, :cond_5

    .line 76
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 78
    :cond_5
    iget-object p2, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080093

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 82
    :goto_1
    iget-object p2, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mClassName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 83
    invoke-static {p2, v0, v1}, Lcom/sonyericsson/music/infinite/PluginPreferences;->readDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/infinite/PluginInfo;->parseDescriptionUri(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mDescription:Ljava/lang/String;

    return-void
.end method

.method private parseDescriptionUri(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mLabel:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 105
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 106
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 109
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isSearchForMoreItem()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mIsSearchForMoreItem:Z

    return v0
.end method

.method public startActivity(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.media.infinite.ACTION_VIEW_INFINITE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 156
    new-instance p2, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mClassName:Ljava/lang/String;

    invoke-direct {p2, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 157
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p2, "com.sonyericsson.media.infinite.EXTRA_ARTIST"

    .line 158
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.sonyericsson.media.infinite.EXTRA_ALBUM"

    .line 159
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.sonyericsson.media.infinite.EXTRA_TITLE"

    .line 160
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, v0, p3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 163
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return p3
.end method

.method public updateDescription(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 126
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/music/infinite/PluginInfo;->parseDescriptionUri(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/infinite/PluginInfo;->mDescription:Ljava/lang/String;

    return-void
.end method
