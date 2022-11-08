.class public Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;
.super Lcom/sonymobile/launcher/idd/events/BaseEvent;
.source "SplitScreenEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;,
        Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$SplitScreenFrom;
    }
.end annotation


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "SplitScreen"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private entryPoint:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entry_point"
    .end annotation
.end field

.field private windows:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "windows"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    const-string v0, "SplitScreen"

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/launcher/idd/events/BaseEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;->windows:Ljava/util/List;

    .line 95
    return-void
.end method

.method private addWindow(Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;)Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;
    .locals 1
    .param p1, "window"    # Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;

    .line 64
    iget-object v0, p0, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;->windows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-object p0
.end method


# virtual methods
.method public entryPoint(Ljava/lang/String;)Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;
    .locals 0
    .param p1, "entryPoint"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;->entryPoint:Ljava/lang/String;

    .line 41
    return-object p0
.end method

.method public windows(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;)Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "primary"    # Landroid/content/ComponentName;
    .param p3, "secondary"    # Landroid/content/ComponentName;

    .line 48
    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;

    invoke-direct {v0}, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;-><init>()V

    .line 53
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;->app(Ljava/lang/String;)Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;

    move-result-object v0

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;->position(I)Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v1}, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;->focused(Z)Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;

    move-result-object v0

    .line 52
    invoke-direct {p0, v0}, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;->addWindow(Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;)Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;

    .line 56
    new-instance v0, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;

    invoke-direct {v0}, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;-><init>()V

    .line 57
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;->app(Ljava/lang/String;)Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;

    move-result-object v0

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;->position(I)Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v1}, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;->focused(Z)Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;

    move-result-object v0

    .line 56
    invoke-direct {p0, v0}, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;->addWindow(Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;)Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;

    .line 60
    return-object p0

    .line 49
    :cond_1
    :goto_0
    return-object p0
.end method
