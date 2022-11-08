.class Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver$2;
.super Landroid/os/AsyncTask;
.source "BadgeResourceProviderObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->notifyBadgeCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Set<",
        "Lcom/sonymobile/launcher/badge/SonyBadgeInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;


# direct methods
.method constructor <init>(Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;

    .line 91
    iput-object p1, p0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver$2;->this$0:Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver$2;->doInBackground([Ljava/lang/Void;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Set;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sonymobile/launcher/badge/SonyBadgeInfo;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver$2;->this$0:Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;

    invoke-static {v0}, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->-$$Nest$mgetAllBadge(Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver$2;->onPostExecute(Ljava/util/Set;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sonymobile/launcher/badge/SonyBadgeInfo;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p1, "badges":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/launcher/badge/SonyBadgeInfo;>;"
    iget-object v0, p0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver$2;->this$0:Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;

    invoke-static {v0, p1}, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->-$$Nest$mnotifyBadge(Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;Ljava/util/Set;)V

    .line 99
    return-void
.end method
