.class public final Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;
.super Landroidx/mediarouter/media/MediaRouteProvider;
.source "DlnaMediaRouteProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DlnaMediaRouteProvider"

.field private static final audioFilter:Landroid/content/IntentFilter;

.field private static final dlnaFilter:Landroid/content/IntentFilter;

.field private static final imageFilter:Landroid/content/IntentFilter;

.field private static final videoFilter:Landroid/content/IntentFilter;


# instance fields
.field private mApplicationPreferences:Landroid/content/SharedPreferences;

.field private mCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;

.field private mChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mContext:Landroid/content/Context;

.field private mControllCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$ProviderCallback;

.field private mController:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

.field private mDlnaScanner:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

.field private mDmrDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHelper:Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;

.field private mRouteId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 180
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->dlnaFilter:Landroid/content/IntentFilter;

    .line 181
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->dlnaFilter:Landroid/content/IntentFilter;

    const-string v1, "dlna"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->dlnaFilter:Landroid/content/IntentFilter;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->dlnaFilter:Landroid/content/IntentFilter;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->dlnaFilter:Landroid/content/IntentFilter;

    const-string v1, "rtsp"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->dlnaFilter:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 186
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->dlnaFilter:Landroid/content/IntentFilter;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->dlnaFilter:Landroid/content/IntentFilter;

    const-string v1, "android.media.intent.action.PLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->dlnaFilter:Landroid/content/IntentFilter;

    const-string v1, "android.media.intent.action.SEEK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->dlnaFilter:Landroid/content/IntentFilter;

    const-string v1, "android.media.intent.action.GET_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->dlnaFilter:Landroid/content/IntentFilter;

    const-string v1, "android.media.intent.action.PAUSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->dlnaFilter:Landroid/content/IntentFilter;

    const-string v1, "android.media.intent.action.RESUME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->dlnaFilter:Landroid/content/IntentFilter;

    const-string v1, "android.media.intent.action.STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->dlnaFilter:Landroid/content/IntentFilter;

    const-string v1, "android.media.intent.category.REMOTE_PLAYBACK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 198
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->dlnaFilter:Landroid/content/IntentFilter;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    sput-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->imageFilter:Landroid/content/IntentFilter;

    .line 199
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->imageFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sonymobile.somcmediarouter.provider.dlna.intent.category.CATEGORY_DLNA_IMAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->imageFilter:Landroid/content/IntentFilter;

    const-string v1, "image/*"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->addDataTypeUnchecked(Landroid/content/IntentFilter;Ljava/lang/String;)V

    .line 202
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->dlnaFilter:Landroid/content/IntentFilter;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    sput-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->audioFilter:Landroid/content/IntentFilter;

    .line 203
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->audioFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sonymobile.somcmediarouter.provider.dlna.intent.category.CATEGORY_DLNA_AUDIO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->audioFilter:Landroid/content/IntentFilter;

    const-string v1, "audio/*"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->addDataTypeUnchecked(Landroid/content/IntentFilter;Ljava/lang/String;)V

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->dlnaFilter:Landroid/content/IntentFilter;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    sput-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->videoFilter:Landroid/content/IntentFilter;

    .line 207
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->videoFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sonymobile.somcmediarouter.provider.dlna.intent.category.CATEGORY_DLNA_VIDEO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 208
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->videoFilter:Landroid/content/IntentFilter;

    const-string v1, "video/*"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->addDataTypeUnchecked(Landroid/content/IntentFilter;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 81
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouteProvider;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mDmrDevices:Ljava/util/List;

    .line 57
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$1;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;)V

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 67
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$2;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;)V

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;

    .line 211
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$3;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;)V

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mControllCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$ProviderCallback;

    .line 82
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->TAG:Ljava/lang/String;

    const-string v1, "DlnaMediaRouteProvider"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mDlnaScanner:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    .line 88
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;

    invoke-direct {v0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mHelper:Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;

    .line 89
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mHelper:Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;

    invoke-virtual {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;->getApplicationPreference()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mApplicationPreferences:Landroid/content/SharedPreferences;

    .line 90
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mApplicationPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;)Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mHelper:Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mDmrDevices:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mDmrDevices:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->createDlnaDescriptor(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;Ljava/lang/String;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->updateRoutes(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mDlnaScanner:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    return-object p0
.end method

.method static synthetic access$602(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mRouteId:Ljava/lang/String;

    return-object p1
.end method

.method private static addDataTypeUnchecked(Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 0

    .line 234
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 236
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private createDlnaDescriptor(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/MediaRouteDescriptor;",
            ">;"
        }
    .end annotation

    .line 105
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->TAG:Ljava/lang/String;

    const-string v1, "createDlnaDescriptor"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_2

    .line 109
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_1

    .line 110
    sget-object p1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->TAG:Ljava/lang/String;

    const-string v0, "dmrDevices is null"

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 114
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;

    .line 116
    sget-boolean v2, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v2, :cond_3

    .line 117
    sget-object v2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CreateDlnaDescriptor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CreateDlnaDescriptor.category = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->getSupportCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Capabilities = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->getCapabilities()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-static {v2, v3}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-virtual {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->getCapabilities()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v4, :cond_4

    .line 127
    sget-object v3, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->imageFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v3, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->audioFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v3, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->videoFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 132
    :cond_4
    invoke-virtual {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->getCapabilities()I

    move-result v3

    and-int/2addr v3, v5

    if-eqz v3, :cond_5

    .line 133
    sget-object v3, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->imageFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_5
    invoke-virtual {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->getCapabilities()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    .line 137
    sget-object v3, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->audioFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_6
    invoke-virtual {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->getCapabilities()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_7

    .line 141
    sget-object v3, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->videoFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    goto/16 :goto_0

    .line 149
    :cond_8
    :goto_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "KEY_DLNA_UDN"

    .line 150
    invoke-virtual {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->getDlnaUdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "KEY_DLNA_NAME"

    .line 151
    invoke-virtual {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "KEY_DLNA_ICON_URI"

    .line 152
    invoke-virtual {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->getDlnaIconUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.resource://"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mHelper:Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;

    .line 155
    invoke-virtual {v6}, Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;->getIconResourceId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 157
    new-instance v6, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 158
    invoke-virtual {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->getDlnaUdn()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/somcmediarouter/provider/utils/IdCreator;->createRouteId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v6, v4}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setIconUri(Landroid/net/Uri;)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 160
    invoke-virtual {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->getSupportCategory()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->getDefaultSubtitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setDescription(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 161
    invoke-virtual {v6, v2}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->addControlFilters(Ljava/util/Collection;)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    const/4 v2, 0x3

    .line 162
    invoke-virtual {v6, v2}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setPlaybackStream(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 163
    invoke-virtual {v6, v5}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setPlaybackType(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 165
    invoke-virtual {v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->isDlnaVolumeControlSupported()Z

    move-result v1

    .line 164
    invoke-virtual {v6, v1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setVolumeHandling(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    const/16 v1, 0x64

    .line 168
    invoke-virtual {v6, v1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setVolumeMax(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    const/4 v1, 0x0

    .line 169
    invoke-virtual {v6, v1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setVolume(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 170
    invoke-virtual {v6, v3}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 171
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->build()Landroidx/mediarouter/media/MediaRouteDescriptor;

    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method

.method private getDefaultSubtitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 372
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;->CATEGORY_TV:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;->fromName(Ljava/lang/String;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/sonymobile/somcmediarouter/R$string;->media_route_controller_home_network_txt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sonymobile/somcmediarouter/R$string;->media_route_controller_home_network_tv_txt:I

    .line 374
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 375
    :cond_0
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;->CATEGORY_SPEAKER:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;->fromName(Ljava/lang/String;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 376
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/sonymobile/somcmediarouter/R$string;->media_route_controller_home_network_txt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sonymobile/somcmediarouter/R$string;->media_route_controller_home_network_speaker_txt:I

    .line 377
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private getRoute(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteDescriptor;
    .locals 3

    .line 358
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->getDescriptor()Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 360
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object v0

    .line 361
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 362
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private updateRoutes(Ljava/lang/String;I)V
    .locals 6

    if-nez p1, :cond_1

    .line 315
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_0

    .line 316
    sget-object p1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->TAG:Ljava/lang/String;

    const-string p2, "updateRoutes() failure: invalid route ID."

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 320
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_2

    .line 322
    sget-object p1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->TAG:Ljava/lang/String;

    const-string p2, "updateRoutes() failure: invalid route ID."

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 327
    :cond_3
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->getDescriptor()Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object v0

    if-nez v0, :cond_5

    .line 329
    sget-boolean p1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz p1, :cond_4

    .line 330
    sget-object p1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->TAG:Ljava/lang/String;

    const-string p2, "updateRoutes() failure: invalid descriptor."

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    const/4 v1, 0x0

    .line 337
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object v0

    .line 338
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 339
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 341
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 342
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_6

    .line 343
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRoutes(): update ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getVolume()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 343
    invoke-static {v1, v4}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_6
    new-instance v1, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    invoke-direct {v1, v3}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;-><init>(Landroidx/mediarouter/media/MediaRouteDescriptor;)V

    invoke-virtual {v1, p2}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setVolume(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->build()Landroidx/mediarouter/media/MediaRouteDescriptor;

    move-result-object v3

    const/4 v1, 0x1

    .line 349
    :cond_7
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    if-eqz v1, :cond_9

    .line 353
    invoke-virtual {p0, v2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->publishRoutes(Ljava/util/ArrayList;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public onCreateRouteController(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    .locals 4

    .line 242
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->TAG:Ljava/lang/String;

    const-string v1, "onCreateRouteController"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->getRoute(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteDescriptor;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 253
    :cond_1
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mRouteId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 256
    new-instance v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    .line 257
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mControllCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$ProviderCallback;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController$ProviderCallback;)V

    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mController:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    .line 258
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mRouteId:Ljava/lang/String;

    .line 259
    sget-boolean v1, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v1, :cond_2

    .line 260
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create controller ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Extra:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_2
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mController:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteController;

    return-object p1
.end method

.method public onDiscoveryRequestChanged(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V
    .locals 3

    .line 269
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->TAG:Ljava/lang/String;

    const-string v1, "onDiscoveryRequestChanged"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 272
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRouteRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    .line 277
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mDlnaScanner:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    invoke-virtual {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->teardown()V

    return-void

    .line 281
    :cond_1
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->getSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->getControlCategories()Ljava/util/List;

    move-result-object p1

    .line 282
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "com.sonymobile.somcmediarouter.provider.dlna.intent.category.CATEGORY_DLNA_AUDIO"

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.sonymobile.somcmediarouter.provider.dlna.intent.category.CATEGORY_DLNA_IMAGE"

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.sonymobile.somcmediarouter.provider.dlna.intent.category.CATEGORY_DLNA_VIDEO"

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    :cond_3
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mDlnaScanner:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;

    invoke-virtual {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->setup(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;)V

    return-void

    .line 291
    :cond_4
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mDlnaScanner:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;

    invoke-virtual {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->teardown()V

    return-void
.end method

.method public publishRoutes(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/MediaRouteDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 296
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 297
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->TAG:Ljava/lang/String;

    const-string v1, "publishRoutes"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 304
    :cond_1
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$4;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$4;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public terminateProvider()V
    .locals 2

    .line 94
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->TAG:Ljava/lang/String;

    const-string v1, "terminateProvider"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mApplicationPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 99
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->mChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_1
    return-void
.end method
