.class public Lcom/android/settingslib/location/SettingsInjector$ServiceSettingClickedListener;
.super Ljava/lang/Object;
.source "SettingsInjector.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/location/SettingsInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ServiceSettingClickedListener"
.end annotation


# instance fields
.field private mInfo:Lcom/android/settingslib/location/InjectedSetting;

.field final synthetic this$0:Lcom/android/settingslib/location/SettingsInjector;


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 364
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 365
    iget-object v0, p0, Lcom/android/settingslib/location/SettingsInjector$ServiceSettingClickedListener;->mInfo:Lcom/android/settingslib/location/InjectedSetting;

    iget-object v1, v0, Lcom/android/settingslib/location/InjectedSetting;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/settingslib/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    .line 376
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 377
    iget-object v0, p0, Lcom/android/settingslib/location/SettingsInjector$ServiceSettingClickedListener;->this$0:Lcom/android/settingslib/location/SettingsInjector;

    invoke-static {v0}, Lcom/android/settingslib/location/SettingsInjector;->access$000(Lcom/android/settingslib/location/SettingsInjector;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/location/SettingsInjector$ServiceSettingClickedListener;->mInfo:Lcom/android/settingslib/location/InjectedSetting;

    iget-object p0, p0, Lcom/android/settingslib/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0
.end method
