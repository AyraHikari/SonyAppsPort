.class public abstract Lcom/sonymobile/launcher/idd/events/BaseEvent;
.super Lcom/sonymobile/launcher/idd/Event;
.source "BaseEvent.java"


# static fields
.field private static final JSON_VERSION:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;

    .line 16
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/launcher/idd/Event;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 17
    return-void
.end method
