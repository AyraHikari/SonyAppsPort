.class public Lcom/sonymobile/launcher/data/PromiseItem;
.super Lcom/sonymobile/launcher/data/PromiseBase;
.source "PromiseItem.java"


# static fields
.field private static final INTENT_CLASSNAME_UNKNOWN:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>(Lcom/sonymobile/launcher/data/PromiseItem;)V
    .locals 0
    .param p1, "promiseItem"    # Lcom/sonymobile/launcher/data/PromiseItem;

    .line 31
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/data/PromiseBase;-><init>(Lcom/sonymobile/launcher/data/PromiseBase;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;)V
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;

    .line 40
    invoke-virtual {p1}, Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/launcher/data/PromisePlaceHolderItem;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/launcher/data/PromiseItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/data/PromiseBase;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/launcher/data/PromiseBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public create()Lcom/sonymobile/launcher/data/Item;
    .locals 1

    .line 45
    new-instance v0, Lcom/sonymobile/launcher/data/PromiseItem;

    invoke-direct {v0, p0}, Lcom/sonymobile/launcher/data/PromiseItem;-><init>(Lcom/sonymobile/launcher/data/PromiseItem;)V

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .line 50
    invoke-virtual {p0}, Lcom/sonymobile/launcher/data/PromiseItem;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    :cond_0
    const-string v0, ""

    .line 54
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sonymobile/launcher/data/PromiseItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 57
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    return-object v1
.end method
