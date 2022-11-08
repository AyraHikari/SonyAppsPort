.class public final Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtomExtensions.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;",
        "Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainerOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1328
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1329
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearGridX()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;
    .locals 1

    .line 1460
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->copyOnWrite()V

    .line 1461
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->-$$Nest$mclearGridX(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;)V

    .line 1462
    return-object p0
.end method

.method public clearQueryLength()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;
    .locals 1

    .line 1358
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->copyOnWrite()V

    .line 1359
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->-$$Nest$mclearQueryLength(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;)V

    .line 1360
    return-object p0
.end method

.method public clearSearchAttributes()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;
    .locals 1

    .line 1405
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->copyOnWrite()V

    .line 1406
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->-$$Nest$mclearSearchAttributes(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;)V

    .line 1407
    return-object p0
.end method

.method public getGridX()I
    .locals 1

    .line 1434
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->getGridX()I

    move-result v0

    return v0
.end method

.method public getQueryLength()I
    .locals 1

    .line 1344
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->getQueryLength()I

    move-result v0

    return v0
.end method

.method public getSearchAttributes()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;
    .locals 1

    .line 1375
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->getSearchAttributes()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    move-result-object v0

    return-object v0
.end method

.method public hasGridX()Z
    .locals 1

    .line 1421
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->hasGridX()Z

    move-result v0

    return v0
.end method

.method public hasQueryLength()Z
    .locals 1

    .line 1337
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->hasQueryLength()Z

    move-result v0

    return v0
.end method

.method public hasSearchAttributes()Z
    .locals 1

    .line 1368
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->hasSearchAttributes()Z

    move-result v0

    return v0
.end method

.method public mergeSearchAttributes(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    .line 1398
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->copyOnWrite()V

    .line 1399
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->-$$Nest$mmergeSearchAttributes(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;)V

    .line 1400
    return-object p0
.end method

.method public setGridX(I)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 1446
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->copyOnWrite()V

    .line 1447
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->-$$Nest$msetGridX(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;I)V

    .line 1448
    return-object p0
.end method

.method public setQueryLength(I)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 1350
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->copyOnWrite()V

    .line 1351
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->-$$Nest$msetQueryLength(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;I)V

    .line 1352
    return-object p0
.end method

.method public setSearchAttributes(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$Builder;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$Builder;

    .line 1390
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->copyOnWrite()V

    .line 1391
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->-$$Nest$msetSearchAttributes(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$Builder;)V

    .line 1392
    return-object p0
.end method

.method public setSearchAttributes(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    .line 1381
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->copyOnWrite()V

    .line 1382
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->-$$Nest$msetSearchAttributes(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;)V

    .line 1383
    return-object p0
.end method
