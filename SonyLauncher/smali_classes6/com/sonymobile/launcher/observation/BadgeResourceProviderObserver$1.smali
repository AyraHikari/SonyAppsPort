.class Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver$1;
.super Landroid/database/ContentObserver;
.source "BadgeResourceProviderObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;


# direct methods
.method constructor <init>(Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 38
    iput-object p1, p0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver$1;->this$0:Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 41
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 43
    iget-object v0, p0, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver$1;->this$0:Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;

    invoke-static {v0}, Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;->-$$Nest$mnotifyBadgeCount(Lcom/sonymobile/launcher/observation/BadgeResourceProviderObserver;)V

    .line 44
    return-void
.end method
