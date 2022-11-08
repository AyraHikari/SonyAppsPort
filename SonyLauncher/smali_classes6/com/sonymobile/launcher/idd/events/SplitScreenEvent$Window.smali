.class Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;
.super Ljava/lang/Object;
.source "SplitScreenEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/idd/events/SplitScreenEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Window"
.end annotation


# instance fields
.field private app:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app"
    .end annotation
.end field

.field private focused:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "focused"
    .end annotation
.end field

.field private position:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "position"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public app(Ljava/lang/String;)Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;
    .locals 0
    .param p1, "app"    # Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;->app:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public focused(Z)Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;
    .locals 1
    .param p1, "focused"    # Z

    .line 81
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;->focused:Ljava/lang/Boolean;

    .line 82
    return-object p0
.end method

.method public position(I)Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;
    .locals 1
    .param p1, "position"    # I

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/idd/events/SplitScreenEvent$Window;->position:Ljava/lang/Integer;

    .line 75
    return-object p0
.end method
