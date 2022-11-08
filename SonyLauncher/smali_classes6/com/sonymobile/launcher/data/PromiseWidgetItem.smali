.class public Lcom/sonymobile/launcher/data/PromiseWidgetItem;
.super Lcom/sonymobile/launcher/data/PromiseBase;
.source "PromiseWidgetItem.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/launcher/data/PromiseWidgetItem;)V
    .locals 0
    .param p1, "promiseWidgetItem"    # Lcom/sonymobile/launcher/data/PromiseWidgetItem;

    .line 25
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/data/PromiseBase;-><init>(Lcom/sonymobile/launcher/data/PromiseBase;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/data/PromiseBase;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/launcher/data/PromiseBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public create()Lcom/sonymobile/launcher/data/Item;
    .locals 1

    .line 30
    new-instance v0, Lcom/sonymobile/launcher/data/PromiseWidgetItem;

    invoke-direct {v0, p0}, Lcom/sonymobile/launcher/data/PromiseWidgetItem;-><init>(Lcom/sonymobile/launcher/data/PromiseWidgetItem;)V

    return-object v0
.end method
