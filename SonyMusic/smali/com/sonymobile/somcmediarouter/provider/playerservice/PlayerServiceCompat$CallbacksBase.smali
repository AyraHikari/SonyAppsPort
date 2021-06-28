.class public Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;
.super Ljava/lang/Object;
.source "PlayerServiceCompat.java"

# interfaces
.implements Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbacksBase"
.end annotation


# instance fields
.field protected mActionFromMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mActionToMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mExtraFromMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mValueToMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;->mActionFromMap:Ljava/util/LinkedHashMap;

    .line 153
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;->mActionToMap:Ljava/util/LinkedHashMap;

    .line 154
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;->mExtraFromMap:Ljava/util/LinkedHashMap;

    .line 155
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;->mValueToMap:Ljava/util/LinkedHashMap;

    .line 162
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;->mActionFromMap:Ljava/util/LinkedHashMap;

    .line 163
    iput-object p2, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;->mActionToMap:Ljava/util/LinkedHashMap;

    .line 164
    iput-object p3, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;->mExtraFromMap:Ljava/util/LinkedHashMap;

    .line 165
    iput-object p4, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;->mValueToMap:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public getAction(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;->mActionToMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;->mActionFromMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;->mExtraFromMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;->mExtraFromMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;->mExtraFromMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return p3

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;->mExtraFromMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;->mExtraFromMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;->mExtraFromMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "extra_state"

    .line 186
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 187
    iget-object p2, p0, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;->mValueToMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    return-object p1
.end method

.method public stateEquals(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v0

    :cond_1
    const-string v0, "extra_state"

    .line 178
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/somcmediarouter/provider/playerservice/PlayerServiceCompat$CallbacksBase;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
