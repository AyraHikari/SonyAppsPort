.class public Lcom/sonymobile/launcher/idd/Idd$SplitScreen;
.super Ljava/lang/Object;
.source "Idd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/idd/Idd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitScreen"
.end annotation


# static fields
.field private static sPrimaryApp:Landroid/content/ComponentName;

.field private static sSplitScreen:Lcom/sonymobile/launcher/idd/Idd$SplitScreen;

.field private static sSplitScreenFrom:Ljava/lang/String;

.field private static secondApp:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 273
    const-string v0, "recent"

    sput-object v0, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->sSplitScreenFrom:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sonymobile/launcher/idd/Idd$SplitScreen;
    .locals 1

    .line 278
    sget-object v0, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->sSplitScreen:Lcom/sonymobile/launcher/idd/Idd$SplitScreen;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;

    invoke-direct {v0}, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;-><init>()V

    sput-object v0, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->sSplitScreen:Lcom/sonymobile/launcher/idd/Idd$SplitScreen;

    .line 281
    :cond_0
    sget-object v0, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->sSplitScreen:Lcom/sonymobile/launcher/idd/Idd$SplitScreen;

    return-object v0
.end method


# virtual methods
.method public secondAppSplitScreen(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "primary"    # Landroid/content/ComponentName;

    .line 344
    sput-object p1, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->secondApp:Landroid/content/ComponentName;

    .line 345
    return-void
.end method

.method public send(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 315
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/Idd;->-$$Nest$smisDefaultHomeApp(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 316
    sput-object v1, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->sPrimaryApp:Landroid/content/ComponentName;

    .line 317
    return-void

    .line 319
    :cond_0
    sget-object v0, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->sPrimaryApp:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->secondApp:Landroid/content/ComponentName;

    if-nez v2, :cond_1

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->secondApp:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    return-void

    .line 331
    :cond_2
    new-instance v0, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;

    invoke-direct {v0, p1}, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;-><init>(Landroid/content/Context;)V

    .line 332
    .local v0, "event":Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;
    sget-object v2, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->sSplitScreenFrom:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;->entryPoint(Ljava/lang/String;)Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->sPrimaryApp:Landroid/content/ComponentName;

    sget-object v4, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->secondApp:Landroid/content/ComponentName;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;->windows(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;)Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;

    .line 333
    invoke-static {}, Lcom/sonymobile/launcher/idd/IddManager;->getInstance()Lcom/sonymobile/launcher/idd/IddManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonymobile/launcher/idd/IddManager;->sendEvent(Lcom/sonymobile/launcher/idd/Event;)V

    .line 334
    sput-object v1, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->sPrimaryApp:Landroid/content/ComponentName;

    .line 335
    sput-object v1, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->secondApp:Landroid/content/ComponentName;

    .line 336
    return-void

    .line 323
    .end local v0    # "event":Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;
    :cond_3
    :goto_0
    return-void
.end method

.method public sendIfSecondaryApp(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "secondaryApp"    # Landroid/content/ComponentName;

    .line 285
    invoke-static {p1}, Lcom/sonymobile/launcher/idd/Idd;->-$$Nest$smisDefaultHomeApp(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 286
    sput-object v1, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->sPrimaryApp:Landroid/content/ComponentName;

    .line 287
    return-void

    .line 289
    :cond_0
    sget-object v0, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->sPrimaryApp:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    .line 293
    return-void

    .line 296
    :cond_1
    nop

    .line 297
    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    .line 298
    .local v0, "isMultiWindowMode":Z
    if-eqz v0, :cond_3

    .line 299
    sget-object v2, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->sPrimaryApp:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    return-void

    .line 304
    :cond_2
    new-instance v2, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;

    invoke-direct {v2, p1}, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;-><init>(Landroid/content/Context;)V

    .line 305
    .local v2, "event":Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;
    sget-object v3, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->sSplitScreenFrom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;->entryPoint(Ljava/lang/String;)Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->sPrimaryApp:Landroid/content/ComponentName;

    invoke-virtual {v3, p1, v4, p2}, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;->windows(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;)Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;

    .line 306
    invoke-static {}, Lcom/sonymobile/launcher/idd/IddManager;->getInstance()Lcom/sonymobile/launcher/idd/IddManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/launcher/idd/IddManager;->sendEvent(Lcom/sonymobile/launcher/idd/Event;)V

    .line 311
    .end local v2    # "event":Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;
    :cond_3
    sput-object v1, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->sPrimaryApp:Landroid/content/ComponentName;

    .line 312
    return-void
.end method

.method public startSplitScreen(Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "primary"    # Landroid/content/ComponentName;

    .line 339
    sput-object p1, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->sSplitScreenFrom:Ljava/lang/String;

    .line 340
    sput-object p2, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->sPrimaryApp:Landroid/content/ComponentName;

    .line 341
    return-void
.end method
