.class public final enum Lcom/sonymobile/launcher/idd/IddManager;
.super Ljava/lang/Enum;
.source "IddManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/launcher/idd/IddManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/launcher/idd/IddManager;

.field private static final IDD_CLASS_NAME:Ljava/lang/String; = "com.sonyericsson.idd.api.Idd"

.field private static final IDD_METHOD_NAME:Ljava/lang/String; = "addAppDataJSON"

.field public static final enum INSTANCE:Lcom/sonymobile/launcher/idd/IddManager;

.field private static final TAG:Ljava/lang/String;

.field private static sPackageName:Ljava/lang/String;

.field private static sVersionCode:I

.field private static sVersionName:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDebugMode:Z

.field private mIddSupported:Z

.field private mToastDebugMode:Z

.field private mUiThreadHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sonymobile/launcher/idd/IddManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/launcher/idd/IddManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lcom/sonymobile/launcher/idd/IddManager;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/launcher/idd/IddManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/launcher/idd/IddManager;->INSTANCE:Lcom/sonymobile/launcher/idd/IddManager;

    .line 21
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sonymobile/launcher/idd/IddManager;

    aput-object v0, v1, v2

    sput-object v1, Lcom/sonymobile/launcher/idd/IddManager;->$VALUES:[Lcom/sonymobile/launcher/idd/IddManager;

    .line 26
    const-class v0, Lcom/sonymobile/launcher/idd/IddManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/idd/IddManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sonymobile/launcher/idd/IddManager;->mIddSupported:Z

    .line 38
    iput-boolean p1, p0, Lcom/sonymobile/launcher/idd/IddManager;->mDebugMode:Z

    .line 40
    iput-boolean p1, p0, Lcom/sonymobile/launcher/idd/IddManager;->mToastDebugMode:Z

    .line 42
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sonymobile/launcher/idd/IddManager;->mContext:Landroid/content/Context;

    .line 44
    iput-object p1, p0, Lcom/sonymobile/launcher/idd/IddManager;->mUiThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/sonymobile/launcher/idd/IddManager;
    .locals 1

    .line 33
    sget-object v0, Lcom/sonymobile/launcher/idd/IddManager;->INSTANCE:Lcom/sonymobile/launcher/idd/IddManager;

    return-object v0
.end method

.method private static getVersionCode(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 130
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 131
    .local v1, "versionCode":I
    if-eqz v0, :cond_0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 134
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 137
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 135
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 139
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_0
    return v1
.end method

.method private static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 116
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "0.0"

    .line 117
    .local v1, "versionName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 120
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 123
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 121
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 125
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method private isIddSupported()Z
    .locals 6

    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "result":Z
    :try_start_0
    const-string v1, "com.sonyericsson.idd.api.Idd"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addAppDataJSON"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Lorg/json/JSONObject;

    aput-object v5, v3, v4

    .line 54
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    const/4 v0, 0x1

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/sonymobile/launcher/idd/IddManager;->TAG:Ljava/lang/String;

    const-string v3, "Idd.addAppDataJSON is not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method

.method private sendToastOnUiThread(Lcom/sonymobile/launcher/idd/Event;)V
    .locals 2
    .param p1, "event"    # Lcom/sonymobile/launcher/idd/Event;

    .line 64
    iget-object v0, p0, Lcom/sonymobile/launcher/idd/IddManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/launcher/idd/IddManager;->mUiThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 65
    new-instance v1, Lcom/sonymobile/launcher/idd/IddManager$1;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/launcher/idd/IddManager$1;-><init>(Lcom/sonymobile/launcher/idd/IddManager;Lcom/sonymobile/launcher/idd/Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/launcher/idd/IddManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/sonymobile/launcher/idd/IddManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/launcher/idd/IddManager;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/launcher/idd/IddManager;
    .locals 1

    .line 21
    sget-object v0, Lcom/sonymobile/launcher/idd/IddManager;->$VALUES:[Lcom/sonymobile/launcher/idd/IddManager;

    invoke-virtual {v0}, [Lcom/sonymobile/launcher/idd/IddManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/launcher/idd/IddManager;

    return-object v0
.end method


# virtual methods
.method public debugMode(Z)Lcom/sonymobile/launcher/idd/IddManager;
    .locals 0
    .param p1, "enabled"    # Z

    .line 101
    iput-boolean p1, p0, Lcom/sonymobile/launcher/idd/IddManager;->mDebugMode:Z

    .line 102
    return-object p0
.end method

.method public init()Lcom/sonymobile/launcher/idd/IddManager;
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/sonymobile/launcher/idd/IddManager;->isIddSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/launcher/idd/IddManager;->mIddSupported:Z

    .line 89
    return-object p0
.end method

.method public init(Landroid/content/Context;)Lcom/sonymobile/launcher/idd/IddManager;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    invoke-static {}, Lcom/sonymobile/launcher/idd/Debug;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/sonymobile/launcher/idd/IddManager;->initForDebug(Landroid/content/Context;)Lcom/sonymobile/launcher/idd/IddManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/launcher/idd/IddManager;->debugMode(Z)Lcom/sonymobile/launcher/idd/IddManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonymobile/launcher/idd/IddManager;->toastDebugMode(Z)Lcom/sonymobile/launcher/idd/IddManager;

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/launcher/idd/IddManager;->init()Lcom/sonymobile/launcher/idd/IddManager;

    .line 80
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/idd/IddManager;->sPackageName:Ljava/lang/String;

    .line 81
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/IddManager;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/idd/IddManager;->sVersionName:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/IddManager;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/sonymobile/launcher/idd/IddManager;->sVersionCode:I

    .line 84
    return-object p0
.end method

.method public initForDebug(Landroid/content/Context;)Lcom/sonymobile/launcher/idd/IddManager;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/launcher/idd/IddManager;->mDebugMode:Z

    .line 94
    iput-boolean v0, p0, Lcom/sonymobile/launcher/idd/IddManager;->mToastDebugMode:Z

    .line 95
    iput-object p1, p0, Lcom/sonymobile/launcher/idd/IddManager;->mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/IddManager;->mUiThreadHandler:Landroid/os/Handler;

    .line 97
    return-object p0
.end method

.method public isToastDebugModeEnabled()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/sonymobile/launcher/idd/IddManager;->mToastDebugMode:Z

    return v0
.end method

.method public sendEvent(Lcom/sonymobile/launcher/idd/Event;)V
    .locals 5
    .param p1, "event"    # Lcom/sonymobile/launcher/idd/Event;

    .line 143
    if-nez p1, :cond_0

    .line 144
    return-void

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/launcher/idd/IddManager;->mDebugMode:Z

    if-nez v0, :cond_4

    iget-boolean v1, p0, Lcom/sonymobile/launcher/idd/IddManager;->mToastDebugMode:Z

    if-nez v1, :cond_4

    .line 147
    iget-boolean v0, p0, Lcom/sonymobile/launcher/idd/IddManager;->mIddSupported:Z

    if-nez v0, :cond_1

    .line 148
    return-void

    .line 150
    :cond_1
    sget-object v0, Lcom/sonymobile/launcher/idd/IddManager;->sPackageName:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/sonymobile/launcher/idd/IddManager;->sVersionName:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    .line 154
    :cond_2
    :try_start_0
    sget v2, Lcom/sonymobile/launcher/idd/IddManager;->sVersionCode:I

    new-instance v3, Lorg/json/JSONObject;

    .line 155
    invoke-virtual {p1}, Lcom/sonymobile/launcher/idd/Event;->toJson()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/idd/api/Idd;->addAppDataJSON(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/sonymobile/launcher/idd/IddManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    goto :goto_2

    .line 151
    :cond_3
    :goto_1
    return-void

    .line 160
    :cond_4
    if-eqz v0, :cond_5

    .line 161
    sget-object v0, Lcom/sonymobile/launcher/idd/IddManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendEvent: app_package:\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/launcher/idd/IddManager;->sPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",app_version_code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sonymobile/launcher/idd/IddManager;->sVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",app_version_name:\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/launcher/idd/IddManager;->sVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    invoke-virtual {p1}, Lcom/sonymobile/launcher/idd/Event;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_5
    iget-boolean v0, p0, Lcom/sonymobile/launcher/idd/IddManager;->mToastDebugMode:Z

    if-eqz v0, :cond_6

    .line 168
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/idd/IddManager;->sendToastOnUiThread(Lcom/sonymobile/launcher/idd/Event;)V

    .line 171
    :cond_6
    :goto_2
    return-void
.end method

.method public toastDebugMode(Z)Lcom/sonymobile/launcher/idd/IddManager;
    .locals 1
    .param p1, "enabled"    # Z

    .line 106
    iget-object v0, p0, Lcom/sonymobile/launcher/idd/IddManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sonymobile/launcher/idd/IddManager;->mToastDebugMode:Z

    .line 107
    return-object p0
.end method
