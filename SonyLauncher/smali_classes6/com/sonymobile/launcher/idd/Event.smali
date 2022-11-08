.class public Lcom/sonymobile/launcher/idd/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field private final jsonVersion:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "json_version"
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "jsonVersion"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/sonymobile/launcher/idd/Event;->type:Ljava/lang/String;

    .line 21
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/Event;->jsonVersion:Ljava/lang/Integer;

    .line 22
    return-void
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 1

    .line 25
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
