.class public interface abstract Lcom/sonymobile/launcher/badge/SonyBadgeManager$BadgeListener;
.super Ljava/lang/Object;
.source "SonyBadgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/badge/SonyBadgeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BadgeListener"
.end annotation


# virtual methods
.method public abstract updateIconBadges(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sonymobile/launcher/badge/SonyBadgeInfo;",
            ">;)V"
        }
    .end annotation
.end method
