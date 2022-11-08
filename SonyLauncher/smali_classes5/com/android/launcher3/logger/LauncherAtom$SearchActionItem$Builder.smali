.class public final Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$SearchActionItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;",
        "Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$SearchActionItemOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11110
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11111
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPackageName()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;
    .locals 1

    .line 11149
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->copyOnWrite()V

    .line 11150
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->-$$Nest$mclearPackageName(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;)V

    .line 11151
    return-object p0
.end method

.method public clearTitle()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;
    .locals 1

    .line 11198
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->copyOnWrite()V

    .line 11199
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->-$$Nest$mclearTitle(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;)V

    .line 11200
    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 11126
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11134
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->getPackageNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 11175
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11183
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasPackageName()Z
    .locals 1

    .line 11119
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->hasPackageName()Z

    move-result v0

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .line 11168
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->hasTitle()Z

    move-result v0

    return v0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 11141
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->copyOnWrite()V

    .line 11142
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->-$$Nest$msetPackageName(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;Ljava/lang/String;)V

    .line 11143
    return-object p0
.end method

.method public setPackageNameBytes(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 11158
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->copyOnWrite()V

    .line 11159
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->-$$Nest$msetPackageNameBytes(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;Lcom/google/protobuf/ByteString;)V

    .line 11160
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 11190
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->copyOnWrite()V

    .line 11191
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->-$$Nest$msetTitle(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;Ljava/lang/String;)V

    .line 11192
    return-object p0
.end method

.method public setTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 11207
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->copyOnWrite()V

    .line 11208
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->-$$Nest$msetTitleBytes(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;Lcom/google/protobuf/ByteString;)V

    .line 11209
    return-object p0
.end method
