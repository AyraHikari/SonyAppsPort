.class public interface abstract Lcom/sonymobile/launcher/allapps/AppsList;
.super Ljava/lang/Object;
.source "AppsList.java"


# virtual methods
.method public abstract getAdapterItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFastScrollerSections()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNumAppRows()I
.end method

.method public abstract getNumFilteredApps()I
.end method

.method public abstract hasNoFilteredResults()Z
.end method

.method public abstract hasSearchResults()Z
.end method
