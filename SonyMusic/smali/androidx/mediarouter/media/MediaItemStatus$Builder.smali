.class public final Landroidx/mediarouter/media/MediaItemStatus$Builder;
.super Ljava/lang/Object;
.source "MediaItemStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaItemStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    .line 325
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->setTimestamp(J)Landroidx/mediarouter/media/MediaItemStatus$Builder;

    .line 326
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaItemStatus$Builder;->setPlaybackState(I)Landroidx/mediarouter/media/MediaItemStatus$Builder;

    return-void
.end method


# virtual methods
.method public build()Landroidx/mediarouter/media/MediaItemStatus;
    .locals 2

    .line 390
    new-instance v0, Landroidx/mediarouter/media/MediaItemStatus;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroidx/mediarouter/media/MediaItemStatus;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public setContentDuration(J)Landroidx/mediarouter/media/MediaItemStatus$Builder;
    .locals 2

    .line 372
    iget-object v0, p0, Landroidx/mediarouter/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "contentDuration"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public setContentPosition(J)Landroidx/mediarouter/media/MediaItemStatus$Builder;
    .locals 2

    .line 363
    iget-object v0, p0, Landroidx/mediarouter/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "contentPosition"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaItemStatus$Builder;
    .locals 2

    .line 382
    iget-object v0, p0, Landroidx/mediarouter/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "extras"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public setPlaybackState(I)Landroidx/mediarouter/media/MediaItemStatus$Builder;
    .locals 2

    .line 354
    iget-object v0, p0, Landroidx/mediarouter/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "playbackState"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setTimestamp(J)Landroidx/mediarouter/media/MediaItemStatus$Builder;
    .locals 2

    .line 346
    iget-object v0, p0, Landroidx/mediarouter/media/MediaItemStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method
