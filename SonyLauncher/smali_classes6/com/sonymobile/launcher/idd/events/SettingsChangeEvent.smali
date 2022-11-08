.class public Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;
.super Lcom/sonymobile/launcher/idd/events/BaseEvent;
.source "SettingsChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent$SettingsType;
    }
.end annotation


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "SettingsChange"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private key:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "key"
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const-string v0, "SettingsChange"

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/launcher/idd/events/BaseEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;->key:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/sonymobile/launcher/idd/events/SettingsChangeEvent;->value:Ljava/lang/String;

    .line 43
    return-object p0
.end method
