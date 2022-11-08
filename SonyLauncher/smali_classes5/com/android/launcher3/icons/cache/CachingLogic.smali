.class public interface abstract Lcom/android/launcher3/icons/cache/CachingLogic;
.super Ljava/lang/Object;
.source "CachingLogic.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public addToMemCache()Z
    .locals 1

    .line 63
    .local p0, "this":Lcom/android/launcher3/icons/cache/CachingLogic;, "Lcom/android/launcher3/icons/cache/CachingLogic<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation
.end method

.method public getDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p2, "fallback"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/android/launcher3/icons/cache/CachingLogic;, "Lcom/android/launcher3/icons/cache/CachingLogic<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    return-object p2
.end method

.method public getKeywords(Ljava/lang/Object;Landroid/os/LocaleList;)Ljava/lang/String;
    .locals 1
    .param p2, "localeList"    # Landroid/os/LocaleList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/LocaleList;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/launcher3/icons/cache/CachingLogic;, "Lcom/android/launcher3/icons/cache/CachingLogic<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation
.end method

.method public getLastUpdatedTime(Ljava/lang/Object;Landroid/content/pm/PackageInfo;)J
    .locals 2
    .param p2, "info"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/pm/PackageInfo;",
            ")J"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/android/launcher3/icons/cache/CachingLogic;, "Lcom/android/launcher3/icons/cache/CachingLogic<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-wide v0, p2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    return-wide v0
.end method

.method public abstract getUser(Ljava/lang/Object;)Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/os/UserHandle;"
        }
    .end annotation
.end method

.method public abstract loadIcon(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/launcher3/icons/BitmapInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)",
            "Lcom/android/launcher3/icons/BitmapInfo;"
        }
    .end annotation
.end method
